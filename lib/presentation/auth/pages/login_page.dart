import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_remote_datasource.dart';
import 'package:flutter_jago_pos_app/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/home/pages/home_page.dart';

import '../../../core/constants/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isObscure = true;

  void _toggleObscure() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      // do something
      context.read<LoginBloc>().add(LoginEvent.login(
            email: _emailController.text,
            password: _passwordController.text,
          ));
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
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
        title: const Text('Masuk',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            )),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 64),
            Image.asset(
              'assets/images/logo/jagopos.png',
              color: AppColors.primary,
              height: 100,
            ),
            SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Masukkan email',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        obscureText: _isObscure,
                        controller: _passwordController,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Masukkan password',
                          suffixIcon: IconButton(
                            onPressed: () {
                              _toggleObscure();
                            },
                            icon: Icon(_isObscure
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 16),
                    SizedBox(height: 16),
                    BlocConsumer<LoginBloc, LoginState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          success: (data) async {
                            await AuthLocalDatasource().saveUserData(data);
                            final response =
                                await AuthRemoteDataSource().myoutlet();
                            response.fold(
                              (l) {
                                print(l);
                              },
                              (r) async {
                                await AuthLocalDatasource().saveOutletData(r);
                              },
                            );
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          },
                          error: (message) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(message,
                                    style: const TextStyle(
                                        color: AppColors.white)),
                                backgroundColor: AppColors.red,
                              ),
                            );
                          },
                          orElse: () {},
                        );
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                            loading: () => const CircularProgressIndicator(),
                            orElse: () {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primary,
                                    minimumSize: Size(double.infinity, 50),
                                  ),
                                  onPressed: () {
                                    _submit();
                                  },
                                  child: Text('MASUK',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: AppColors.white,
                                          fontWeight: FontWeight.w700)),
                                ),
                              );
                            });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
