import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/extensions/int_ext.dart';
import 'package:flutter_jago_pos_app/core/extensions/string_ext.dart';
import 'package:flutter_jago_pos_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_jago_pos_app/data/models/requests/order_request_model.dart';
import 'package:flutter_jago_pos_app/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/home/bloc/order/order_bloc.dart';

import 'package:flutter_jago_pos_app/presentation/home/models/product_model.dart';
import 'package:flutter_jago_pos_app/presentation/home/models/product_quantity.dart';
import 'package:flutter_jago_pos_app/presentation/home/pages/invoice_page.dart';

import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({
    super.key,
  });

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final TextEditingController nominalController =
      TextEditingController(text: 'Rp 100.000');

  String paymentMethod = 'Tunai';

  @override
  void initState() {
    super.initState();

    nominalController.text = context.read<CheckoutBloc>().state.maybeWhen(
          orElse: () => '',
          success: (orders, total, tax, subtotal, totalPayment, qty) {
            return totalPayment.currencyFormatRp;
          },
        );

    nominalController.addListener(() {
      final nominal = nominalController.text.replaceAll(RegExp(r'[^0-9]'), '');
      nominalController.value = TextEditingValue(
        text: nominal.currencyFormatRp,
        selection:
            TextSelection.collapsed(offset: nominal.currencyFormatRp.length),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pembayaran',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<CheckoutBloc, CheckoutState>(
                  builder: (context, state) {
                    return Text(
                      state.maybeWhen(
                        orElse: () => '',
                        success:
                            (orders, total, tax, subtotal, totalPayment, qty) {
                          return totalPayment.currencyFormatRp;
                        },
                      ),
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    );
                  },
                ),
                const SpaceHeight(8.0),
                Text(
                  'Total Pembayaran',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SpaceHeight(16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  'Nominal Pembayaran',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SpaceHeight(16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: nominalController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Rp 100.000',
                hintStyle: TextStyle(
                  color: AppColors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: AppColors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
          ),
          const SpaceHeight(16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  'Metode Pembayaran',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SpaceHeight(16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      paymentMethod = 'Tunai';
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: paymentMethod == 'Tunai'
                          ? AppColors.primary
                          : AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.grey),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: paymentMethod == 'Tunai'
                                ? AppColors.white
                                : AppColors.primary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.money,
                                color: paymentMethod == 'Tunai'
                                    ? AppColors.primary
                                    : AppColors.white,
                              ),
                            ],
                          ),
                        ),
                        const SpaceWidth(16),
                        Text('Tunai',
                            style: TextStyle(
                              color: paymentMethod == 'Tunai'
                                  ? AppColors.white
                                  : AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                  ),
                ),
                const SpaceWidth(16),
                InkWell(
                  onTap: () {
                    setState(() {
                      paymentMethod = 'QRIS';
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: paymentMethod == 'QRIS'
                          ? AppColors.primary
                          : AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.grey),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: paymentMethod == 'QRIS'
                                ? AppColors.white
                                : AppColors.primary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.qr_code,
                                color: paymentMethod == 'QRIS'
                                    ? AppColors.primary
                                    : AppColors.white,
                              ),
                            ],
                          ),
                        ),
                        const SpaceWidth(16),
                        Text('QRIS',
                            style: TextStyle(
                              color: paymentMethod == 'QRIS'
                                  ? AppColors.white
                                  : AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SpaceHeight(28.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            child: BlocBuilder<CheckoutBloc, CheckoutState>(
              builder: (context, state) {
                double subtotal = state.maybeWhen(
                  orElse: () => 0,
                  success: (orders, total, tax, subtotal, totalPayment, qty) {
                    return subtotal;
                  },
                );

                double totalPrice = state.maybeWhen(
                  orElse: () => 0,
                  success: (orders, total, tax, subtotal, totalPayment, qty) {
                    return totalPayment;
                  },
                );

                int totalItems = state.maybeWhen(
                  orElse: () => 0,
                  success: (orders, total, tax, subtotal, totalPayment, qty) {
                    return qty;
                  },
                );

                double tax = state.maybeWhen(
                  orElse: () => 0,
                  success: (orders, total, tax, subtotal, totalPayment, qty) {
                    return tax;
                  },
                );

                double discount = state.maybeWhen(
                  orElse: () => 0,
                  success: (orders, total, tax, subtotal, totalPayment, qty) {
                    return 0;
                  },
                );

                List<ProductQuantity> items = state.maybeWhen(
                  orElse: () => [],
                  success: (orders, total, tax, subtotal, totalPayment, qty) {
                    return orders;
                  },
                );
                return BlocListener<OrderBloc, OrderState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      success: (data) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return InvoicePage(
                            nominal: nominalController.text.toIntegerFromText
                                .toDouble(),
                            totalPrice: totalPrice,
                            transaction: data,
                          );
                        }));
                      },
                      error: (message) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(message,
                                style: const TextStyle(color: AppColors.white)),
                            backgroundColor: AppColors.error,
                          ),
                        );
                      },
                    );
                  },
                  child: ElevatedButton(
                    onPressed: () async {
                      final outletData =
                          await AuthLocalDatasource().getOutletData();

                      final data = OrderRequestModel(
                        outletId: outletData.id!,
                        subtotal: subtotal,
                        totalPrice: totalPrice,
                        totalItems: totalItems,
                        tax: tax,
                        discount: discount,
                        paymentMethod: paymentMethod,
                        items: items,
                      );

                      context
                          .read<OrderBloc>()
                          .add(OrderEvent.createOrder(data));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Text(
                      'Bayar',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
