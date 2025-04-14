import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';

import 'package:flutter_jago_pos_app/data/models/responses/category_response_model.dart';
import 'package:flutter_jago_pos_app/presentation/items/bloc/category/category_bloc.dart';

class EditCategoryPage extends StatefulWidget {
  final Category category;
  const EditCategoryPage({
    super.key,
    required this.category,
  });

  @override
  State<EditCategoryPage> createState() => _EditCategoryPageState();
}

class _EditCategoryPageState extends State<EditCategoryPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    _nameController.text = widget.category.name ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: const Text('Edit Kategori',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Kateogri',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kategori tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              BlocConsumer<CategoryBloc, CategoryState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    success: (data) {
                      Navigator.pop(context);
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<CategoryBloc>().add(
                                CategoryEvent.updateCategory(
                                    id: widget.category.id!,
                                    name: _nameController.text));
                          }
                        },
                        child: const Text('Simpan',
                            style: TextStyle(color: Colors.white)),
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
      ),
    );
  }
}
