import 'package:flutter/material.dart';
import 'package:paez0524/formularioArticulos.dart';
import 'package:gap/gap.dart';

class TabArticulos extends StatelessWidget {
  final String id_Producto;
  final String marca;
  final String modelo;
  final String costo;
  final String color;
  final String cantidad;

  TabArticulos(this.id_Producto, this.marca, this.modelo, this.costo,
      this.color, this.cantidad,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xfffffbfe),
        title: const Text(
          "Tabla productos",
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
      DataColumn(label: Text("id_Producto")),
      DataColumn(label: Text(id_Producto)),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text("marca")),
        DataCell(Text(marca)),
      ]),
      DataRow(cells: [
        DataCell(Text("modelo")),
        DataCell(Text(modelo)),
      ]),
      DataRow(cells: [
        DataCell(Text("costo")),
        DataCell(Text(costo)),
      ]),
      DataRow(cells: [
        DataCell(Text("color")),
        DataCell(Text(color)),
      ]),
      DataRow(cells: [
        DataCell(Text("cantidad")),
        DataCell(Text(cantidad)),
      ]),
    ];
  }
}
