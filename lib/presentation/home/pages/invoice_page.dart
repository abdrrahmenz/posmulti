import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:print_bluetooth_thermal/print_bluetooth_thermal.dart';

import 'package:flutter_jago_pos_app/core/extensions/int_ext.dart';
import 'package:flutter_jago_pos_app/core/extensions/string_ext.dart';
import 'package:flutter_jago_pos_app/data/dataoutputs/cwb_print.dart';
import 'package:flutter_jago_pos_app/data/models/responses/transaction_response_model.dart';
import 'package:flutter_jago_pos_app/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/home/models/product_model.dart';
import 'package:flutter_jago_pos_app/presentation/home/models/product_quantity.dart';
import 'package:flutter_jago_pos_app/presentation/home/pages/home_page.dart';
import 'package:flutter_jago_pos_app/presentation/items/bloc/product/product_bloc.dart';

import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';

class InvoicePage extends StatefulWidget {
  // final List<ProductQtyModel> orders;
  final double nominal;
  final double totalPrice;
  final Transaction transaction;

  const InvoicePage({
    super.key,
    required this.nominal,
    required this.totalPrice,
    required this.transaction,
  });

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  // List<ProductQuantity> orders = [];
  // double subtotal = 0;
  // double tax = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nota ${widget.transaction.orderNumber}',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            context.read<CheckoutBloc>().add(const CheckoutEvent.started());
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const HomePage();
            }));
          },
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.totalPrice.currencyFormatRp,
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Total Pembayaran',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 80,
                  width: 1,
                  color: AppColors.grey,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.nominal - widget.totalPrice}'
                          .currencyFormatRpV3,
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Kembalian',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: BlocBuilder<CheckoutBloc, CheckoutState>(
              builder: (context, state) {
                return state.maybeWhen(orElse: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }, success: (orders, total, tax, subtotal, totalPayment, qty) {
                  return ListView.builder(
                    // padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: orders.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          orders[index].product.name ?? '',
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        subtitle: Text(
                          '${orders[index].product.price!.currencyFormatRpV3} x ${orders[index].quantity}',
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: Text(
                          (orders[index].product.price!.toDouble *
                                  orders[index].quantity)
                              .currencyFormatRp,
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      );
                    },
                  );
                });
                // return ListView.builder(
                //   // padding: const EdgeInsets.symmetric(horizontal: 16),
                //   itemCount: widget.orders.length,
                //   itemBuilder: (context, index) {
                //     return ListTile(
                //       title: Text(
                //         widget.orders[index].product.name,
                //         style: TextStyle(
                //           color: AppColors.black,
                //           fontSize: 16,
                //           fontWeight: FontWeight.w400,
                //         ),
                //       ),
                //       subtitle: Text(
                //         '${widget.orders[index].product.price} x ${widget.orders[index].qty}',
                //         style: TextStyle(
                //           color: AppColors.black,
                //           fontSize: 16,
                //           fontWeight: FontWeight.w400,
                //         ),
                //       ),
                //       trailing: Text(
                //         (widget.orders[index].product.price *
                //                 widget.orders[index].qty)
                //             .currencyFormatRp,
                //         style: TextStyle(
                //           color: AppColors.black,
                //           fontSize: 16,
                //           fontWeight: FontWeight.w400,
                //         ),
                //       ),
                //     );
                //   },
                // );
              },
            ),
          ),
          const Divider(),
          BlocBuilder<CheckoutBloc, CheckoutState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                success: (cart, discount, tax, subtotal, total, totalItems) {
                  return Container(
                    height: 240,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SpaceHeight(16.0),
                        InkWell(
                          onTap: () async {
                            final printValue =
                                await CwbPrint.instance.printOrderV2(
                              cart,
                              totalItems,
                              total.toInt(),
                              'Tunai',
                              widget.nominal.toInt(),
                              'Mawar',
                              'Customer',
                              tax,
                              subtotal,
                              widget.transaction.orderNumber ?? '',
                              discount,
                              false
                            );
                            await PrintBluetoothThermal.writeBytes(printValue);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.print,
                                    color: AppColors.black,
                                  ),
                                  const SpaceWidth(16),
                                  Text(
                                    'CETAK NOTA',
                                    style: TextStyle(
                                      color: AppColors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SpaceHeight(16),
                        InkWell(
                          onTap: () {
                            context
                                .read<CheckoutBloc>()
                                .add(const CheckoutEvent.started());
                            context
                                .read<ProductBloc>()
                                .add(const ProductEvent.getProducts());
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const HomePage();
                            }));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'SELESAI',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
