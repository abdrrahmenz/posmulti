import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/components/spaces.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/requests/staff_request_model.dart';
import 'package:flutter_jago_pos_app/presentation/outlet/bloc/outlet/outlet_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/staff/bloc/staff/staff_bloc.dart';

class AddStaffPage extends StatefulWidget {
  const AddStaffPage({super.key});

  @override
  State<AddStaffPage> createState() => _AddStaffPageState();
}

class _AddStaffPageState extends State<AddStaffPage> {
  //keyform
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  //email
  final TextEditingController _emailController = TextEditingController();
  //password
  final TextEditingController _passwordController = TextEditingController();
  //outletId
  int? _outletId;
  //roleId
  int _roleId = 3;

  @override
  void initState() {
    context.read<OutletBloc>().add(const OutletEvent.getOutlets());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Staff',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.white),
        ),
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
                  labelText: 'Nama',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.next,
              ),
              SpaceHeight(16),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email tidak boleh kosong';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              SpaceHeight(16),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password tidak boleh kosong';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
              ),
              SpaceHeight(16),
              BlocBuilder<OutletBloc, OutletState>(
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
              SpaceHeight(16),
              DropdownButtonFormField<int>(
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
                ),
              ),
              SpaceHeight(32),
              BlocConsumer<StaffBloc, StaffState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    error: (message) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message,
                              style: const TextStyle(color: Colors.white)),
                          backgroundColor: AppColors.error,
                        ),
                      );
                    },
                    loaded: (data) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Staff berhasil ditambahkan',
                              style: TextStyle(color: Colors.white)),
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
                          minimumSize: const Size(double.infinity, 44),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            final authData =
                                await AuthLocalDatasource().getUserData();
                            int businessId = authData?.data?.businessId ?? 0;
                            final data = StaffRequestModel(
                              name: _nameController.text,
                              email: _emailController.text,
                              password: _passwordController.text,
                              outletId: _outletId!,
                              roleId: _roleId,
                              businessId: businessId,
                            );

                            context
                                .read<StaffBloc>()
                                .add(StaffEvent.addStaff(data));
                          }
                        },
                        child: const Text('Simpan',
                            style: TextStyle(
                                color: Colors.white,
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
      ),
    );
  }
}
