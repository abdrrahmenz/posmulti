import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/core/extensions/date_time_ext.dart';
import 'package:flutter_jago_pos_app/core/extensions/int_ext.dart';
import 'package:flutter_jago_pos_app/presentation/home/bloc/transaction/transaction_bloc.dart';

import 'package:flutter_jago_pos_app/presentation/home/models/product_model.dart';
import 'package:flutter_jago_pos_app/presentation/home/widgets/drawer_widget.dart';
import 'package:flutter_jago_pos_app/presentation/transaction/widgets/transaction_group_widget.dart';

import '../../../core/constants/colors.dart';

class TransactionPage extends StatefulWidget {
  // final List<ProductQtyModel> orders;
  const TransactionPage({
    super.key,
    // required this.orders,
  });

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  //global key
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    context
        .read<TransactionBloc>()
        .add(const TransactionEvent.getTransactions());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Transaksi',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu, color: AppColors.white)),
      ),
      body: BlocBuilder<TransactionBloc, TransactionState>(
        builder: (context, state) {
          return state.maybeWhen(orElse: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, error: (message) {
            return Center(
              child: Text(message),
            );
          }, success: (transactions) {
            if (transactions.data!.isEmpty) {
              return const Center(
                child: Text('Tidak ada transaksi'),
              );
            }
            //transactions.data to list transactionGroup
            List<TransactionGroup> transactionGroups = [];
            transactions.data!.forEach((transaction) {
              //cek apakah transactionGroup sudah ada
              if (transactionGroups
                  .where((element) =>
                      element.date ==
                      transaction.createdAt!.toFormattedDateOnly())
                  .isEmpty) {
                //jika belum ada, maka buat transactionGroup baru
                transactionGroups.add(TransactionGroup(
                    date: transaction.createdAt!.toFormattedDateOnly(),
                    items: [transaction]));
              } else {
                //jika sudah ada, maka tambahkan transaction ke transactionGroup yang sudah ada
                transactionGroups
                    .where((element) =>
                        element.date ==
                        transaction.createdAt!.toFormattedDateOnly())
                    .first
                    .items
                    .add(transaction);
              }
            });
            return ListView.builder(
              itemCount: transactionGroups.length,
              itemBuilder: (context, index) {
                return TransactionGroupWidget(transactionGroups[index]);
              },
            );
          });
        },
      ),
    );
  }
}
