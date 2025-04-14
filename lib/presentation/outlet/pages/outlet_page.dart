import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/presentation/home/widgets/drawer_widget.dart';
import 'package:flutter_jago_pos_app/presentation/outlet/bloc/outlet/outlet_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/outlet/pages/add_outlet_page.dart';
import 'package:flutter_jago_pos_app/presentation/outlet/pages/detail_outlet_page.dart';

class OutletPage extends StatefulWidget {
  final String outletName;
  const OutletPage({
    super.key,
    required this.outletName,
  });

  @override
  State<OutletPage> createState() => _OutletPageState();
}

class _OutletPageState extends State<OutletPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    context.read<OutletBloc>().add(OutletEvent.getOutlets());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text(
          widget.outletName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu, color: AppColors.white),
        ),
      ),
      body: BlocBuilder<OutletBloc, OutletState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (data) {
              if (data.isEmpty) {
                return Center(
                  child: Text('Belum ada outlet'),
                );
              }
              return ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.store,
                          size: 32,
                        ),
                        title: Text(data[index].name ?? '',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text(data[index].address ?? ''),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailOutletPage(
                              outlet: data[index],
                            );
                          }));
                        },
                      ),
                      Divider(),
                    ],
                  );
                },
              );
            },
          );
          // return ListView(
          //   padding: EdgeInsets.all(16),
          //   children: [
          //     ListTile(
          //       leading: Icon(Icons.store),
          //       title: Text("Outlets Pusat"),
          //       subtitle: Text('Jl. Sudirman No 26'),
          //       onTap: () {},
          //     ),
          //     Divider(),
          //     ListTile(
          //       leading: Icon(Icons.store),
          //       title: Text("Cabang 1"),
          //       subtitle: Text('Jl. Hasyim Ashari No 12'),
          //       onTap: () {},
          //     ),
          //     Divider(),
          //     ListTile(
          //       leading: Icon(Icons.store),
          //       title: Text("Caban 2"),
          //       subtitle: Text('Jl. Urip Sumoharjo No 10'),
          //       onTap: () {},
          //     ),
          //     Divider(),
          //   ],
          // );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddOutletPage();
          }));
        },
        backgroundColor: AppColors.primary,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
