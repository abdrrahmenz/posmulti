import 'package:bloc/bloc.dart';
import 'package:flutter_jago_pos_app/core/extensions/string_ext.dart';
import 'package:flutter_jago_pos_app/data/models/requests/business_setting_request_model.dart';
import 'package:flutter_jago_pos_app/presentation/home/models/product_quantity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/responses/product_response_model.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(_Success([], 0, 0, 0, 0, 0)) {
    on<_AddToCart>((event, emit) {
      final product = event.product;
      final state = this.state as _Success;
      var products = [...state.cart];
      final index =
          products.indexWhere((element) => element.product.id == product.id);
      if (index == -1) {
        products.add(ProductQuantity(product: product, quantity: 1));
      } else {
        products[index].quantity++;
      }
      final total = products.fold(
          0,
          (previousValue, element) =>
              previousValue +
              element.product.price!.toDouble.toInt() * element.quantity);
      final totalQuantity = products.fold(
          0, (previousValue, element) => previousValue + element.quantity);
      // final totalDiscount = products.fold(0, (previousValue, element) => previousValue + element.product.discount);
      final taxs =
          event.businessSetting.where((element) => element.chargeType == 'tax');
      final totalTax = taxs.fold(
          0.0,
          (previousValue, element) =>
              previousValue + (total * (element.value.toDouble / 100)));
      // final tax = total * 0.1;
      final totalPayment = total + totalTax;

      emit(_Loading());
      emit(_Success(products, 0, totalTax.toDouble(), total.toDouble(),
          totalPayment.toDouble(), totalQuantity));
    });

    on<_RemoveFromCart>((event, emit) {
      final product = event.product;
      final state = this.state as _Success;
      var products = [...state.cart];
      final index =
          products.indexWhere((element) => element.product.id == product.id);
      if (index == -1) {
        products.add(ProductQuantity(product: product, quantity: 1));
      } else {
        //remove product from cart

        products.removeAt(index);
      }
      final total = products.fold(
          0,
          (previousValue, element) =>
              previousValue +
              element.product.price!.toDouble.toInt() * element.quantity);
      final totalQuantity = products.fold(
          0, (previousValue, element) => previousValue + element.quantity);
      final totalTax = event.businessSetting.fold(
          0.0,
          (previousValue, element) =>
              previousValue + (total * (element.value.toDouble / 100)));
      final totalPayment = total - 0 + totalTax;
      emit(_Loading());
      emit(_Success(products, 0, totalTax, total.toDouble(),
          totalPayment.toDouble(), totalQuantity));
    });

    on<_Started>((event, emit) {
      emit(_Loading());
      emit(_Success([], 0, 0, 0, 0, 0));
    });

    on<_AddDiscount>((event, emit) {
      final state = this.state as _Success;
      final discount = event.discount;
      final total = state.cart.fold(
          0,
          (previousValue, element) =>
              previousValue +
              element.product.price!.toDouble.toInt() * element.quantity);
      final totalQuantity = state.cart.fold(
          0, (previousValue, element) => previousValue + element.quantity);
      final totalTax = state.tax;
      final totalPayment = total -
          (discount.type == 'fixed'
              ? discount.value.toDouble
              : total * (discount.value.toDouble / 100)) +
          totalTax;
      emit(_Loading());
      emit(_Success(
          state.cart,
          (discount.type == 'fixed'
              ? discount.value.toDouble
              : total * (discount.value.toDouble / 100)),
          totalTax,
          total.toDouble(),
          totalPayment,
          totalQuantity));
    });

    on<_RemoveDiscount>((event, emit) {
      final state = this.state as _Success;
      final total = state.cart.fold(
          0,
          (previousValue, element) =>
              previousValue +
              element.product.price!.toDouble.toInt() * element.quantity);
      final totalQuantity = state.cart.fold(
          0, (previousValue, element) => previousValue + element.quantity);
      final totalTax = state.tax;
      final totalPayment = total + 0 + totalTax;
      emit(_Loading());
      emit(_Success(state.cart, 0, totalTax, total.toDouble(), totalPayment,
          totalQuantity));
    });
  }
}
