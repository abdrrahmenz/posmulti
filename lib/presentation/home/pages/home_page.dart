import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/components/spaces.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/core/constants/variables.dart';
import 'package:flutter_jago_pos_app/core/extensions/build_context_ext.dart';
import 'package:flutter_jago_pos_app/core/extensions/int_ext.dart';
import 'package:flutter_jago_pos_app/core/extensions/string_ext.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/requests/business_setting_request_model.dart';
import 'package:flutter_jago_pos_app/presentation/auth/bloc/account/account_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/home/models/product_model.dart';
import 'package:flutter_jago_pos_app/presentation/home/pages/checkout_page.dart';
import 'package:flutter_jago_pos_app/presentation/home/widgets/drawer_widget.dart';
import 'package:flutter_jago_pos_app/presentation/items/bloc/category/category_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/items/bloc/product/product_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/items/pages/category_page.dart';
import 'package:flutter_jago_pos_app/presentation/items/pages/product/product_page.dart';
import 'package:flutter_jago_pos_app/presentation/scanner/blocs/get_qrcode/get_qrcode_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/scanner/pages/scanner_page.dart';
import 'package:flutter_jago_pos_app/presentation/tax_discount/bloc/business_setting/business_setting_bloc.dart';
import 'package:print_bluetooth_thermal/print_bluetooth_thermal.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  OverlayEntry? _overlayEntry;

  final GlobalKey cartKey = GlobalKey();
  bool _isAnimating = false;

  double totalPayment = 0;

  List<ProductQtyModel> orders = [];

  void _addOrder(ProductModel product) {
    setState(() {
      final index =
          orders.indexWhere((element) => element.product.id == product.id);
      if (index >= 0) {
        orders[index].qty++;
      } else {
        orders.add(ProductQtyModel(product: product));
      }
      totalPayment += product.price;
    });
  }

  //category selected
  int? selectedCategory;

  @override
  void initState() {
    super.initState();
    context.read<ProductBloc>().add(ProductEvent.getProducts());
    context.read<AccountBloc>().add(const AccountEvent.getAccount());
    context.read<CategoryBloc>().add(const CategoryEvent.getCategories());
    context
        .read<BusinessSettingBloc>()
        .add(const BusinessSettingEvent.getBusinessSetting());
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    AuthLocalDatasource().getPrinter().then((value) async {
      if (value != null) {
        await PrintBluetoothThermal.connect(
            macPrinterAddress: value.macAddress ?? "");
      }
    });
  }

  void _startAnimation(
      BuildContext context, GlobalKey buttonKey, Widget image) {
    if (_isAnimating) return;

    final RenderBox buttonBox =
        buttonKey.currentContext!.findRenderObject() as RenderBox;
    final RenderBox cartBox =
        cartKey.currentContext!.findRenderObject() as RenderBox;
    final Offset buttonPosition = buttonBox.localToGlobal(Offset.zero);
    final Offset cartPosition = cartBox.localToGlobal(Offset.zero);

    _animation = Tween<Offset>(
      begin: buttonPosition,
      end: cartPosition,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _overlayEntry = _createFloatingIcon(buttonPosition, image);
    Overlay.of(context).insert(_overlayEntry!);

    setState(() {
      _isAnimating = true;
    });

    _controller.forward().then((_) {
      _overlayEntry?.remove();
      setState(() {
        _isAnimating = false;
        _controller.reset();
      });
    });
  }

  OverlayEntry _createFloatingIcon(Offset startPosition, Widget image) {
    return OverlayEntry(
      builder: (context) => AnimatedBuilder(
        animation: _controller,
        builder: (_, child) {
          final offset = Offset(
            _animation.value.dx,
            _animation.value.dy,
          );
          return Positioned(
            top: offset.dy,
            left: offset.dx,
            child: image,
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Tambahkan key di sini
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Penjualan',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: AppColors.white,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          BlocListener<GetQrcodeBloc, GetQrcodeState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  success: (value) async {
                    context.read<ProductBloc>().add(
                        ProductEvent.getProductByBarcode(value));
                  });
            },
            child: GestureDetector(
              onTap: () {
                context
                    .read<GetQrcodeBloc>()
                    .add(const GetQrcodeEvent.started());
                context.push(const ScannerPage());
              },
              child: Image.asset(
                'assets/images/barcode.png',
                color: AppColors.white,
                height: 28,
              ),
            ),
          ),
          SpaceWidth(16),
        ],
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CheckoutPage(
                    // orders: orders,
                    );
              }));
            },
            child: Container(
              height: 80,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    key: cartKey,
                    'BAYAR',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  BlocBuilder<CheckoutBloc, CheckoutState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SpaceWidth(10),
                              Text(
                                '(0 item)',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          );
                        },
                        success: (orders, promo, tax, subtotal, total, qty) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                total.currencyFormatRp,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SpaceWidth(10),
                              Text(
                                '($qty item)',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade300),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/search-status.png',
                      color: AppColors.primary,
                    ), // Ikon di kiri
                    SizedBox(width: 16),
                    //vertical divender
                    Container(
                      height: 28,
                      width: 1,
                      color: Colors.grey.shade300,
                    ),
                    SizedBox(width: 8),
                    BlocBuilder<CategoryBloc, CategoryState>(
                      builder: (context, state) {
                        return state.maybeWhen(orElse: () {
                          return Text(
                            'Semua Kategori',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          );
                        }, success: (data) {
                          //drowdown
                          return SizedBox(
                            width: 240,
                            child: DropdownButton(
                              icon: const SizedBox.shrink(),
                              borderRadius: BorderRadius.circular(8),
                              value: selectedCategory,
                              items: data.data!
                                  .map(
                                    (e) => DropdownMenuItem(
                                      value: e.id,
                                      child: Text(e.name ?? ""),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (value) {
                                setState(() {
                                  selectedCategory = value;
                                });
                                context.read<ProductBloc>().add(
                                    ProductEvent.getProductsByCategory(value!));
                              },
                              hint: Text(
                                'Semua Kategori',
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          );
                        });
                      },
                    ),
                  ],
                ),
                // Icon(Icons.keyboard_arrow_down,
                //     color: AppColors.primary), // Dropdown ikon
              ],
            ),
          ),
          SpaceHeight(8),
          Expanded(
            child: BlocBuilder<AccountBloc, AccountState>(
              builder: (context, state) {
                final outletData = state.maybeWhen(
                  orElse: () => null,
                  loaded: (data, outlet) => outlet,
                );
                return BlocBuilder<BusinessSettingBloc, BusinessSettingState>(
                  builder: (context, state) {
                    List<BusinessSettingRequestModel> taxs = state.maybeWhen(
                      orElse: () => [],
                      loaded: (data) => data.where((element) {
                        return element.chargeType == 'tax';
                      }).toList(),
                    );
                    return BlocBuilder<ProductBloc, ProductState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () {
                            return Center(child: CircularProgressIndicator());
                          },
                          loading: () {
                            return Center(child: CircularProgressIndicator());
                          },
                          success: (products) {
                            if (products.isEmpty) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(child: Text("No Items")),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.primary,
                                      minimumSize: const Size(200, 50),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const CategoryPage();
                                      }));
                                    },
                                    child: Text("Tambahkan Kategori",
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ),
                                ],
                              );
                            }
                            return ListView.separated(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              itemBuilder: (context, index) {
                                GlobalKey buttonKey = GlobalKey();
                                return InkWell(
                                  key: buttonKey,
                                  onTap: () async {
                                    if (products[index]
                                            .stocks!
                                            .where((element) =>
                                                element.outletId ==
                                                outletData!.id)
                                            .first
                                            .quantity! <=
                                        0) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text("Stok Habis"),
                                          backgroundColor: AppColors.red,
                                        ),
                                      );
                                      return;
                                    }
                                    _startAnimation(
                                      context,
                                      buttonKey,
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: changeStringtoColor(
                                              products[index].color ?? ""),
                                        ),
                                      ),
                                    );
                                    await Future.delayed(
                                        Duration(milliseconds: 700));
                                    context.read<CheckoutBloc>().add(
                                          CheckoutEvent.addToCart(
                                            product: products[index],
                                            businessSetting: taxs,
                                          ),
                                        );
                                  },
                                  child: Card(
                                    color: Colors.white,
                                    child: ListTile(
                                      leading: products[index].image != null
                                          ? ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.network(
                                                Variables.baseUrl +
                                                    products[index].image!,
                                                width: 50,
                                                height: 50,
                                                fit: BoxFit.cover,
                                              ),
                                            )
                                          : Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: changeStringtoColor(
                                                    products[index].color ??
                                                        ""),
                                              ),
                                            ),
                                      title: Text(products[index].name ?? "",
                                          style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          )),
                                      subtitle: Text(
                                          "Stock: ${products[index].stocks!.where((element) => element.outletId == outletData!.id).first.quantity}",
                                          style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      trailing: Text(
                                          products[index]
                                              .price!
                                              .currencyFormatRpV3,
                                          style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ),
                                  ),
                                );
                              },
                              itemCount: products.length,
                              separatorBuilder: (context, index) {
                                return const SpaceHeight(4);
                              },
                            );
                          },
                        );
                      },
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
