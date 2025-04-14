import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/extensions/int_ext.dart';
import 'package:flutter_jago_pos_app/core/extensions/string_ext.dart';
import 'package:flutter_jago_pos_app/data/models/requests/business_setting_request_model.dart';
import 'package:flutter_jago_pos_app/presentation/home/bloc/checkout/checkout_bloc.dart';

import 'package:flutter_jago_pos_app/presentation/home/models/product_model.dart';
import 'package:flutter_jago_pos_app/presentation/home/pages/payment_page.dart';
import 'package:flutter_jago_pos_app/presentation/tax_discount/bloc/business_setting/business_setting_bloc.dart';

import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({
    super.key,
  });

  @override
  State<CheckoutPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<CheckoutPage> {
  @override
  void initState() {
    super.initState();
  }

  // bool isDiscount = false;
  BusinessSettingRequestModel? discount;
  void _onDiscount(discount) {
    setState(() {
      // isDiscount = !isDiscount;
      this.discount = discount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Pesanan',
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
          const SpaceHeight(16.0),
          Expanded(
            child: BlocBuilder<BusinessSettingBloc, BusinessSettingState>(
              builder: (context, state) {
                List<BusinessSettingRequestModel> taxs = state.maybeWhen(
                  orElse: () => [],
                  loaded: (data) => data
                      .where((element) => element.chargeType == 'tax')
                      .toList(),
                );
                return BlocBuilder<CheckoutBloc, CheckoutState>(
                  builder: (context, state) {
                    return state.maybeWhen(orElse: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }, success:
                        (orders, total, tax, subtotal, totalPayment, qty) {
                      return ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        shrinkWrap: true,
                        itemCount: orders.length,
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Text(
                                  '${orders[index].quantity} x ${orders[index].product.name}',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  maxLines: 2,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                (orders[index].product.price!.toDouble *
                                        orders[index].quantity)
                                    .currencyFormatRp,
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 8),
                              InkWell(
                                onTap: () {
                                  context.read<CheckoutBloc>().add(
                                        CheckoutEvent.removeFromCart(
                                          product: orders[index].product,
                                          businessSetting: taxs,
                                        ),
                                      );
                                },
                                child: Icon(
                                  Icons.delete,
                                  color: AppColors.red,
                                  size: 18,
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SpaceHeight(16.0);
                        },
                      );
                    });
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocBuilder<BusinessSettingBloc, BusinessSettingState>(
              builder: (context, state) {
                return state.maybeWhen(orElse: () {
                  return SizedBox();
                }, loaded: (data) {
                  List<BusinessSettingRequestModel> taxs = data
                      .where((element) => element.chargeType == 'discount')
                      .toList();

                  return Wrap(
                    children: [
                      ...taxs.map((e) {
                        return CheckboxListTile(
                          title: Text(e.name),
                          value: discount == e,
                          onChanged: (value) {
                            _onDiscount(value! ? e : null);
                            value
                                ? context.read<CheckoutBloc>().add(
                                      CheckoutEvent.addDiscount(
                                        discount: e,
                                      ),
                                    )
                                : context.read<CheckoutBloc>().add(
                                      CheckoutEvent.removeDiscount(
                                        discount: e,
                                      ),
                                    );
                          },
                        );
                      }),
                    ],
                  );
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocBuilder<BusinessSettingBloc, BusinessSettingState>(
              builder: (context, state) {
                List<BusinessSettingRequestModel> taxs = state.maybeWhen(
                  orElse: () => [],
                  loaded: (data) => data
                      .where((element) => element.chargeType == 'tax')
                      .toList(),
                );
                return BlocBuilder<CheckoutBloc, CheckoutState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => Container(),
                      success:
                          (orders, discount, tax, subtotal, totalPayment, qty) {
                        return Column(
                          children: [
                            Divider(
                              color: AppColors.grey,
                              thickness: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Jumlah Item',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  qty.toString(),
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const SpaceHeight(8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Subtotal',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  subtotal.currencyFormatRp,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            ...taxs.map((e) => Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      e.name,
                                      style: const TextStyle(
                                        color: AppColors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      (subtotal *
                                              (e.value.toIntegerFromText / 100)
                                                  .toDouble())
                                          .currencyFormatRp,
                                      style: const TextStyle(
                                        color: AppColors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                )),
                            const SpaceHeight(8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Diskon',
                                  style: const TextStyle(
                                    color: AppColors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  discount.currencyFormatRp,
                                  style: const TextStyle(
                                    color: AppColors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const SpaceHeight(8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  totalPayment.currencyFormatRp,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
          Container(
            height: 120,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PaymentPage();
                          }));
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
