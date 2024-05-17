import 'package:flutter/material.dart';
import 'package:paez0524/formularioEmpleado.dart';
import 'package:gap/gap.dart';

class TabEmpleado extends StatelessWidget {
  final String id_Empleado;
  final String nombre;
  final String apellido;
  final String telefono;
  final String correo;
  final String domicilio;

  TabEmpleado(this.id_Empleado, this.nombre, this.apellido, this.telefono,
      this.correo, this.domicilio,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xfffffbfe),
        title: const Text(
          "Tabla Empleado",
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
      DataColumn(label: Text("id_Empleado")),
      DataColumn(label: Text(id_Empleado)),
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
        DataCell(Text("correo")),
        DataCell(Text(correo)),
      ]),
      DataRow(cells: [
        DataCell(Text("domicilio")),
        DataCell(Text(domicilio)),
      ]),
    ];
  }
}
