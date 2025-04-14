import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/components/spaces.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/core/extensions/build_context_ext.dart';
import 'package:flutter_jago_pos_app/data/models/requests/staff_request_model.dart';

import 'package:flutter_jago_pos_app/data/models/responses/me_response_model.dart';
import 'package:flutter_jago_pos_app/presentation/outlet/bloc/outlet/outlet_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/staff/bloc/staff/staff_bloc.dart';

class EditStaffPage extends StatefulWidget {
  final UserModel user;
  const EditStaffPage({
    super.key,
    required this.user,
  });

  @override
  State<EditStaffPage> createState() => _EditStaffPageState();
}

class _EditStaffPageState extends State<EditStaffPage> {
  int _roleId = 0;
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  //outletId
  int? _outletId;

  @override
  void initState() {
    _roleId = widget.user.role!.id;
    _nameController.text = widget.user.name!;
    _emailController.text = widget.user.email!;
    _outletId = widget.user.outlet!.id;
    context.read<OutletBloc>().add(const OutletEvent.getOutlets());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Staff',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              //name
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'Nama Staff',
                    // border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama staff tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              //email
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email Staff',
                    // border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email staff tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                  textInputAction: TextInputAction.next,
                ),
              ),
              SpaceHeight(16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: BlocBuilder<OutletBloc, OutletState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return const CircularProgressIndicator();
                      },
                      loaded: (data) {
                        _outletId ??= data.first.id!;

                        return DropdownButtonFormField<int>(
                          value: _outletId,
                          items: data
                              .map((e) => DropdownMenuItem(
                                    value: e.id,
                                    child: Text(e.name ?? ''),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              _outletId = value!;
                            });
                          },
                          decoration: const InputDecoration(
                            labelText: 'Outlet',
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              SpaceHeight(16),
              //role
              Padding(
                padding: const EdgeInsets.all(16),
                child: DropdownButtonFormField<int>(
                  value: _roleId,
                  items: const [
                    DropdownMenuItem(
                      value: 3,
                      child: Text('Kasir'),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: Text('Manager'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _roleId = value!;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Role',
                    // border: OutlineInputBorder(),
                  ),
                ),
              ),
              //submit button
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final data = StaffRequestModel(
                        name: _nameController.text,
                        email: _emailController.text,
                        password: _passwordController.text,
                        outletId: _outletId!,
                        roleId: _roleId,
                        businessId: widget.user.businessId!,
                      );
                      context.read<StaffBloc>().add(
                            StaffEvent.editStaff(
                              data,
                              widget.user.id!,
                            ),
                          );
                      context.pop();
                      context.pop();
                    }
                  },
                  child: const Text('Simpan',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
