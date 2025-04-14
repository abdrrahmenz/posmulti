import 'package:flutter/material.dart';
import 'package:flutter_jago_pos_app/core/constants/colors.dart';

import 'package:flutter_jago_pos_app/data/models/responses/me_response_model.dart';
import 'package:flutter_jago_pos_app/presentation/staff/pages/edit_staff_page.dart';

class DetailStaffPage extends StatefulWidget {
  final UserModel user;
  const DetailStaffPage({
    super.key,
    required this.user,
  });

  @override
  State<DetailStaffPage> createState() => _DetailStaffPageState();
}

class _DetailStaffPageState extends State<DetailStaffPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Staff',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            title: const Text('Nama Staff'),
            subtitle: Text(widget.user.name ?? ''),
          ),
          ListTile(
            title: const Text('Email Staff'),
            subtitle: Text(widget.user.email ?? ''),
          ),
          ListTile(
            title: const Text('Role'),
            subtitle: Text(widget.user.role!.name),
          ),
          ListTile(
            title: const Text('Outlet'),
            subtitle: Text(widget.user.outlet?.name ?? ''),
          ),
          SizedBox(height: 16),
          //edit button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 40),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditStaffPage(user: widget.user),
                ),
              );
            },
            child: const Text('Edit Staff',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
