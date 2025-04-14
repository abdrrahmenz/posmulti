import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_jago_pos_app/core/extensions/date_time_ext.dart';
import 'package:flutter_jago_pos_app/core/extensions/int_ext.dart';
import 'package:flutter_jago_pos_app/core/utils/helper_pdf_service.dart';
import 'package:flutter_jago_pos_app/data/models/responses/me_response_model.dart';
import 'package:flutter_jago_pos_app/data/models/responses/sales_report_response_model.dart';

import 'package:pdf/widgets.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class SalesInvoiceWidget {
  static late Font ttf;
  static Future<File> generate(
    String date,
    SalesReportResponseModel report,
    Outlet outlet,
  ) async {
    final pdf = Document();
    var data = await rootBundle.load("assets/fonts/noto-sans.ttf");
    ttf = Font.ttf(data);
    // final ByteData dataImage = await rootBundle.load('assets/images/logo.png');
    // final Uint8List bytes = dataImage.buffer.asUint8List();

    // Membuat objek Image dari gambar
    // final image = pw.MemoryImage(bytes);

    pdf.addPage(
      MultiPage(
        build: (context) => [
          buildHeader(date),
          SizedBox(height: 1 * PdfPageFormat.cm),
          buildInvoice(report),
          Divider(),
          SizedBox(height: 0.25 * PdfPageFormat.cm),
        ],
        footer: (context) => buildFooter(outlet.address ?? ''),
      ),
    );

    return HelperPdfService.saveDocument(
        name:
            'Summary Sales Report | ${DateTime.now().millisecondsSinceEpoch}.pdf',
        pdf: pdf);
  }

  static Widget buildHeader(String searchDateFormatted) =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 1 * PdfPageFormat.cm),
            Text('Sales Summary Report',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 0.2 * PdfPageFormat.cm),
            Text(
              "Data: $searchDateFormatted",
            ),
            Text(
              'Created At: ${DateTime.now().toFormattedDateTime()}',
            ),
          ],
        ),
      ]);

  static Widget buildInvoice(SalesReportResponseModel report) {
    final headers = ['Title', 'Value']; // Ubah header sesuai kebutuhan

    final data = [
      ['Total Receipts', report.totalRecipts.toString()],
      ['Total Sales', report.totalSales.currencyFormatRp],
      ['Average Sales', report.averageSales.currencyFormatRp],
      ['Total Price', report.totalPrice.currencyFormatRp],
      ['Total Cost', report.totalCost.currencyFormatRp],
      ['Total Profit', report.totalProfit.currencyFormatRp],
    ];

    return Table.fromTextArray(
      headers: headers,
      data: data,
      border: null,
      headerStyle: TextStyle(
          fontWeight: FontWeight.bold, color: PdfColor.fromHex('FFFFFF')),
      headerDecoration: BoxDecoration(color: PdfColors.blue),
      cellHeight: 30,
      cellAlignments: {
        0: Alignment.centerLeft,
        1: Alignment.centerRight,
      },
    );
  }

  static Widget buildFooter(String address) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(),
          SizedBox(height: 2 * PdfPageFormat.mm),
          buildSimpleText(title: 'Address', value: address),
          SizedBox(height: 1 * PdfPageFormat.mm),
        ],
      );

  static buildSimpleText({
    required String title,
    required String value,
  }) {
    final style = TextStyle(fontWeight: FontWeight.bold);

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: pw.CrossAxisAlignment.end,
      children: [
        Text(title, style: style),
        SizedBox(width: 2 * PdfPageFormat.mm),
        Text(value),
      ],
    );
  }

  static buildText({
    required String title,
    required String value,
    double width = double.infinity,
    TextStyle? titleStyle,
    bool unite = false,
  }) {
    final style = titleStyle ?? TextStyle(fontWeight: FontWeight.bold);

    return Container(
      width: width,
      child: Row(
        children: [
          Expanded(child: Text(title, style: style)),
          Text(value, style: unite ? style : null),
        ],
      ),
    );
  }
}
