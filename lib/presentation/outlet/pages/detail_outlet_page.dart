import 'package:flutter/material.dart';

import 'package:flutter_jago_pos_app/core/constants/colors.dart';
import 'package:flutter_jago_pos_app/data/models/responses/me_response_model.dart';
import 'package:flutter_jago_pos_app/presentation/outlet/pages/edit_outlet_page.dart';

class DetailOutletPage extends StatefulWidget {
  final Outlet outlet;
  const DetailOutletPage({
    super.key,
    required this.outlet,
  });

  @override
  State<DetailOutletPage> createState() => _DetailOutletPageState();
}

class _DetailOutletPageState extends State<DetailOutletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Outlet',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.white),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            title: const Text('Nama Outlet'),
            subtitle: Text(widget.outlet.name ?? ''),
          ),
          ListTile(
            title: const Text('Alamat Outlet'),
            subtitle: Text(widget.outlet.address ?? ''),
          ),
          ListTile(
            title: const Text('Nomor Telepon'),
            subtitle: Text(widget.outlet.phone ?? ''),
          ),
          ListTile(
            title: const Text('Deskripsi Outlet'),
            subtitle: Text(widget.outlet.description ?? ''),
          ),
          SizedBox(height: 16),
          //edit button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditOutletPage(
                    outlet: widget.outlet,
                  ),
                ),
              );
            },
            child: const Text('Edit Outlet',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
          ),
        ],
      ),
    );
  }
}
