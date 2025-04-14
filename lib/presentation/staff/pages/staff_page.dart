import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/staff/bloc/staff/staff_bloc.dart';
import 'package:flutter_jago_pos_app/presentation/staff/pages/add_staff_page.dart';
import 'package:flutter_jago_pos_app/presentation/staff/pages/detail_staff_page.dart';

import '../../../core/constants/colors.dart';
import '../../home/widgets/drawer_widget.dart';

class StaffPage extends StatefulWidget {
  const StaffPage({super.key});

  @override
  State<StaffPage> createState() => _StaffPageState();
}

class _StaffPageState extends State<StaffPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    context.read<StaffBloc>().add(StaffEvent.getStaffs());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Staff Managements',
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
      body: BlocBuilder<StaffBloc, StaffState>(
        builder: (context, state) {
          return state.maybeWhen(orElse: () {
            return Center(
              child: CircularProgressIndicator(),
            );
          }, loaded: (data) {
            return ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppColors.primary,
                        child: Icon(Icons.person, color: AppColors.white),
                      ),
                      title: Text(data[index].name ?? "",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(data[index].role!.name),
                      trailing:
                          Icon(Icons.arrow_forward_ios, color: AppColors.black),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailStaffPage(user: data[index]);
                        }));
                      },
                    ),
                    Divider(),
                  ],
                );
              },
            );
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddStaffPage();
          }));
        },
        child: Icon(Icons.add, color: AppColors.white),
      ),
    );
  }
}
