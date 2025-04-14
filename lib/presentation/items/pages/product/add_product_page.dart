import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/components/spaces.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/core/extensions/string_ext.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/responses/category_response_model.dart';
import 'package:flutter_jago_pos_app/presentation/items/bloc/category/category_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/items/bloc/product/product_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/items/models/product_model.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/components/custom_dropdown.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final _nameController = TextEditingController();
  final _priceController = TextEditingController();
  final _stockController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _barcodeController = TextEditingController();
  final _costController = TextEditingController();
  final _businessIdController = TextEditingController();

  // String _selectedCategory = 'Pilih Kategori';

  Category? _selectedCategoryData;

  //8 list colors
  List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal
  ];

  Color _selectedColor = Colors.red;

  final _formKey = GlobalKey<FormState>();

  XFile? _image;

  void _getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = image;
      });
    }
  }

  void _takePicture() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _image = image;
      });
    }
  }

  void changeColor(Color color) {
    setState(() {
      _selectedColor = color;
    });
  }

  //radio button
  bool _isImage = false;

  @override
  void initState() {
    BlocProvider.of<CategoryBloc>(context).add(CategoryEvent.getCategories());
    _priceController.addListener(() {
      final nominal = _priceController.text.replaceAll(RegExp(r'[^0-9]'), '');
      _priceController.value = TextEditingValue(
        text: nominal.currencyFormatRp,
        selection:
            TextSelection.collapsed(offset: nominal.currencyFormatRp.length),
      );
    });

    _costController.addListener(() {
      final nominal = _costController.text.replaceAll(RegExp(r'[^0-9]'), '');
      _costController.value = TextEditingValue(
        text: nominal.currencyFormatRp,
        selection:
            TextSelection.collapsed(offset: nominal.currencyFormatRp.length),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tambah Produk',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: AppColors.white)),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Nama Produk',
              ),
              textCapitalization: TextCapitalization.words,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 16),
            //category dropdown
            BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                List<Category> categories = [
                  Category(id: 0, name: 'Pilih Kategori')
                ];
                state.maybeWhen(
                  orElse: () {},
                  success: (data) {
                    categories = data.data ?? [];
                    _selectedCategoryData ??= categories.first;
                  },
                );
                return CustomDropdown<Category>(
                  value: categories.first,
                  items: categories,
                  label: 'Kategori',
                  onChanged: (value) {
                    setState(() {
                      _selectedCategoryData = value;
                    });
                  },
                );
              },
            ),
            const SizedBox(height: 16),

            TextFormField(
              controller: _priceController,
              decoration: const InputDecoration(
                labelText: 'Harga Jual',
              ),
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _costController,
              decoration: const InputDecoration(
                labelText: 'Harga Dasar',
              ),
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _barcodeController,
              decoration: const InputDecoration(
                labelText: 'Barcode',
              ),
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
            ),
            // const SizedBox(height: 16),
            // TextFormField(
            //   controller: _stockController,
            //   decoration: const InputDecoration(
            //     labelText: 'Stok',
            //   ),
            //   keyboardType: TextInputType.number,
            //   textInputAction: TextInputAction.next,
            // ),

            const SizedBox(height: 16),
            Text('Tampilan di POS'),
            const SizedBox(height: 16),
            RadioListTile<bool>(
                value: false,
                groupValue: _isImage,
                onChanged: (value) {
                  setState(() {
                    _isImage = value!;
                  });
                },
                title: Text('Warna')),
            RadioListTile(
                value: true,
                groupValue: _isImage,
                onChanged: (value) {
                  setState(() {
                    _isImage = value!;
                  });
                },
                title: Text('Gambar')),
            const SizedBox(height: 16),
            if (!_isImage)
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: _colors
                    .map((color) => GestureDetector(
                          onTap: () {
                            changeColor(color);
                          },
                          child: _selectedColor == color
                              ? Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: color,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 4,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  ),
                                )
                              : Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: color,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                ),
                        ))
                    .toList(),
              ),
            // const SizedBox(height: 16),
            if (_isImage)
              //upload image or pick image from gallery
              Row(
                children: [
                  //Container for image preview
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: _image != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.file(
                              File(_image!.path),
                              fit: BoxFit.cover,
                            ),
                          )
                        : Icon(Icons.image),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(200, 40),
                        ),
                        onPressed: () {
                          _getImage();
                        },
                        child: Row(
                          children: [
                            Icon(Icons.folder),
                            SpaceWidth(8),
                            const Text('Pilih Gambar'),
                          ],
                        ),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(200, 40),
                        ),
                        onPressed: () {
                          _takePicture();
                        },
                        child: Row(
                          children: [
                            Icon(Icons.camera_alt),
                            SpaceWidth(8),
                            const Text('Ambil Foto'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            const SizedBox(height: 24),
            BlocConsumer<ProductBloc, ProductState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  success: (data) {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Produk berhasil ditambahkan',
                            style: const TextStyle(color: AppColors.white)),
                        backgroundColor: AppColors.primary,
                      ),
                    );
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        minimumSize: Size(double.infinity, 50),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          final authData =
                              await AuthLocalDatasource().getUserData();
                          final outletData =
                              await AuthLocalDatasource().getOutletData();
                          final data = ProductModel(
                            name: _nameController.text,
                            categoryId: _selectedCategoryData!.id!,
                            price: _priceController.text.toIntegerFromText
                                .toDouble(),
                            cost: _costController.text.toIntegerFromText
                                .toDouble(),
                            stock: 0,
                            color: getColorString(_selectedColor),
                            barcode: _barcodeController.text,
                            businessId: authData!.data!.businessId!,
                            description: _nameController.text,
                            outletId: outletData.id!,
                          );

                          if (_isImage) {
                            if (_isImage) {
                              context.read<ProductBloc>().add(
                                  ProductEvent.addProductWithImage(
                                      data, _image!));
                              return;
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text('Pilih Gambar'),
                                      content:
                                          Text('Pilih gambar terlebih dahulu'),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text('OK'))
                                      ],
                                    );
                                  });
                              return;
                            }
                          } else {
                            context
                                .read<ProductBloc>()
                                .add(ProductEvent.addProduct(data));
                          }
                        }
                      },
                      child: const Text('Simpan',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                    );
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
