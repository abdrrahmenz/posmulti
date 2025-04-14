import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/presentation/auth/bloc/register/register_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/auth/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _businessNameController = TextEditingController();
  final _businessAddressController = TextEditingController();
  bool _isAgree = false;
  bool _isObscure = true;

  void _toggleObscure() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      if (_isAgree) {
        context.read<RegisterBloc>().add(RegisterEvent.register(
              businessName: _businessNameController.text,
              businessAddress: _businessAddressController.text,
              email: _emailController.text,
              password: _passwordController.text,
            ));
      }
    }
  }

  void _toggleAgree() {
    setState(() {
      _isAgree = !_isAgree;
    });
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
        title: const Text('Daftar',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            )),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        controller: _businessNameController,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: 'Nama Bisnis',
                          hintText: 'Masukkan nama bisnis',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Nama bisnis tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        controller: _businessAddressController,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          labelText: 'Alamat Bisnis',
                          hintText: 'Masukkan alamat bisnis',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Alamat bisnis tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 16),
                    //checkbox untuk setuju
                    Row(
                      children: [
                        Checkbox(
                            value: _isAgree,
                            onChanged: (value) {
                              _toggleAgree();
                            }),
                        Expanded(
                            child: Text(
                          'Saya setuju dengan syarat dan ketentuan.',
                          maxLines: 2,
                        )),
                      ],
                    ),
                    SizedBox(height: 16),
                    BlocConsumer<RegisterBloc, RegisterState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          success: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const LoginPage();
                            }));
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text('Registrasi berhasil',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: AppColors.white)),
                                backgroundColor: AppColors.primary,
                              ),
                            );
                          },
                          error: (message) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(message),
                              ),
                            );
                          },
                          orElse: () {},
                        );
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                          loading: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
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
                                child: Text('DAFTAR',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w700)),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    // SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sudah punya akun? '),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const LoginPage();
                            }));
                          },
                          child: Text('Masuk'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
