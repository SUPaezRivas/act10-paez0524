import 'package:flutter/material.dart';
import 'package:paez0524/formularioVentas.dart';
import 'package:gap/gap.dart';

class TabVenta extends StatelessWidget {
  final String id_Venta;
  final String fecha;
  final String hora;
  final String cantidad;
  final String total;
  final String precio;

  TabVenta(this.id_Venta, this.fecha, this.hora, this.cantidad, this.total,
      this.precio,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xfffffbfe),
        title: const Text(
          "Tabla Venta",
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
      body: Container(
        height: 150,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (context, count) {
              return _createDataTable();
            }),
      ),
    );
  }

  //
  DataTable _createDataTable() {
    return DataTable(columns: _createColumns(), rows: _createRows());
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text("Id_Venta")),
      DataColumn(label: Text(id_Venta)),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text("fecha")),
        DataCell(Text(fecha)),
      ]),
      DataRow(cells: [
        DataCell(Text("hora")),
        DataCell(Text(hora)),
      ]),
      DataRow(cells: [
        DataCell(Text("cantdad")),
        DataCell(Text(cantidad)),
      ]),
      DataRow(cells: [
        DataCell(Text("total")),
        DataCell(Text(total)),
      ]),
      DataRow(cells: [
        DataCell(Text("precio")),
        DataCell(Text(precio)),
      ]),
    ];
  }
}
