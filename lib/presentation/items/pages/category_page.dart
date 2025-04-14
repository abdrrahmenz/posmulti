import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/components/spaces.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/presentation/items/bloc/category/category_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/items/pages/add_category_page.dart';
import 'package:flutter_jago_pos_app/presentation/items/pages/edit_category_page.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  void initState() {
    context.read<CategoryBloc>().add(CategoryEvent.getCategories());
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
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.white),
        ),
        title: const Text('Categories',
            style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700)),
        centerTitle: true,
      ),
      body: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => const Center(child: CircularProgressIndicator()),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              error: (error) => Center(
                    child: Text(error.message),
                  ),
              success: (success) {
                if (success.data.data!.isEmpty) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Center(child: Text('No Categories')),
                      SpaceHeight(30),
                      //add category button
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const AddCategoryPage();
                            }));
                          },
                          child: const Text('Add Category',
                              style: TextStyle(color: AppColors.white))),
                    ],
                  );
                }
                return ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: success.data.data!.length + 1,
                  itemBuilder: (context, index) {
                    if (index == success.data.data!.length) {
                      return const SizedBox();
                    }
                    final category = success.data.data![index];
                    return Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.category),
                          title: Text(category.name!),
                          trailing: IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return EditCategoryPage(category: category);
                              }));
                            },
                            icon: const Icon(Icons.edit),
                          ),
                        ),
                        const Divider(),
                      ],
                    );
                  },
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const AddCategoryPage();
          }));
        },
        child: const Icon(Icons.add, color: AppColors.white),
      ),
    );
  }
}
