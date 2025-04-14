import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/datasources/business_setting_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/datasources/category_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/datasources/order_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/datasources/outlet_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/datasources/printer_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/datasources/product_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/datasources/sales_report_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/datasources/staff_remote_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/responses/auth_response_model.dart';
import 'package:flutter_jago_pos_app/presentation/auth/bloc/account/account_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/auth/bloc/logout/logout_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/auth/pages/register_page.dart';
import 'package:flutter_jago_pos_app/presentation/auth/pages/splash_page.dart';
import 'package:flutter_jago_pos_app/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/home/bloc/order/order_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/home/bloc/transaction/transaction_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/home/pages/checkout_page.dart';
import 'package:flutter_jago_pos_app/presentation/home/pages/home_page.dart';
import 'package:flutter_jago_pos_app/presentation/home/pages/invoice_page.dart';
import 'package:flutter_jago_pos_app/presentation/home/pages/payment_page.dart';
import 'package:flutter_jago_pos_app/presentation/home/pages/product_animation_page.dart';
import 'package:flutter_jago_pos_app/presentation/items/bloc/category/category_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/items/bloc/product/product_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/outlet/bloc/outlet/outlet_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/printer/bloc/printer/printer_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/sales_report/bloc/sales_report/sales_report_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/scanner/blocs/get_qrcode/get_qrcode_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/staff/bloc/staff/staff_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/tax_discount/bloc/business_setting/business_setting_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'presentation/auth/bloc/register/register_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegisterBloc(AuthRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => CategoryBloc(CategoryRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => ProductBloc(ProductRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => CheckoutBloc(),
        ),
        BlocProvider(
          create: (context) => OrderBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => TransactionBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => AccountBloc(AuthLocalDatasource()),
        ),
        BlocProvider(
          create: (context) => OutletBloc(OutletRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => StaffBloc(StaffRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => PrinterBloc(PrinterRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) =>
              BusinessSettingBloc(BusinessSettingRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => SalesReportBloc(SalesReportRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => GetQrcodeBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Jago POS',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          useMaterial3: true,
          textTheme: GoogleFonts.quicksandTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            color: AppColors.primary,
            elevation: 0,
            titleTextStyle: GoogleFonts.quicksand(
              color: AppColors.primary,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
            iconTheme: const IconThemeData(
              color: AppColors.primary,
            ),
          ),
        ),
        home: FutureBuilder<AuthResponseModel?>(
            future: AuthLocalDatasource().getUserData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data != null &&
                    snapshot.data!.accessToken != null) {
                  return const HomePage();
                } else {
                  return const SplashPage();
                }
              } else {
                return const SplashPage();
              }
            }),
      ),
    );
  }
}
