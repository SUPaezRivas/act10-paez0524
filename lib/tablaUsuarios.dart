import 'package:flutter/material.dart';
import 'package:paez0524/formularioUsuarios.dart';
import 'package:gap/gap.dart';

class TabUsuarios extends StatelessWidget {
  final String id_Usuario;
  final String nombre;
  final String apellido;
  final String telefono;
  final String direccion;
  final String codigopostal;

  TabUsuarios(this.id_Usuario, this.nombre, this.apellido, this.telefono,
      this.direccion, this.codigopostal,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xfffffbfe),
        title: const Text(
          "Tabla Ususarios",
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
      DataColumn(label: Text("Id_Usuario")),
      DataColumn(label: Text(id_Usuario)),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text("nombre")),
        DataCell(Text(nombre)),
      ]),
      DataRow(cells: [
        DataCell(Text("apellido")),
        DataCell(Text(apellido)),
      ]),
      DataRow(cells: [
        DataCell(Text("telefono")),
        DataCell(Text(telefono)),
      ]),
      DataRow(cells: [
        DataCell(Text("direccion")),
        DataCell(Text(direccion)),
      ]),
      DataRow(cells: [
        DataCell(Text("codigopostal")),
        DataCell(Text(codigopostal)),
      ]),
    ];
  }
}
