import 'package:paez0524/my_drawer_header.dart';
import 'package:flutter/material.dart';

import 'package:paez0524/formularioVentas.dart';
import 'package:paez0524/tablaVentas.dart';

import 'package:paez0524/formularioUsuarios.dart';
import 'package:paez0524/tablaUsuarios.dart';

import 'package:paez0524/formularioProovedor.dart';
import 'package:paez0524/tablaProovedor.dart';

import 'package:paez0524/formularioArticulos.dart';
import 'package:paez0524/tablaArticulos.dart';

import 'package:paez0524/formularioEmpleado.dart';
import 'package:paez0524/tablaEmpleado.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
//s9s9s9s  rrrrrrr

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.proveedor;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.proveedor) {
      container = FormProovedor();
    } else if (currentPage == DrawerSections.usuario) {
      container = FormUsuarios();
    } else if (currentPage == DrawerSections.ventas) {
      container = FormVenta();
    } else if (currentPage == DrawerSections.producto) {
      container = FormArticulos();
    } else if (currentPage == DrawerSections.empleado) {
      container = FormEmpleado();
    } else if (currentPage == DrawerSections.tablaproovedor) {
      container = TabProovedor(
        "",
        "",
        "",
        "",
        "",
        "",
      );
    } else if (currentPage == DrawerSections.tablausuarios) {
      container = TabUsuarios(
        "",
        "",
        "",
        "",
        "",
        "",
      );
    } else if (currentPage == DrawerSections.tablaventas) {
      container = TabVenta(
        "",
        "",
        "",
        "",
        "",
        "",
      );
    } else if (currentPage == DrawerSections.tablaproductos) {
      container = TabArticulos(
        "",
        "",
        "",
        "",
        "",
        "",
      );
    } else if (currentPage == DrawerSections.tablaempleado) {
      container = TabEmpleado(
        "",
        "",
        "",
        "",
        "",
        "",
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00cb00),
        title: Text("Tablas paez0524"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Formulario Proovedor", Icons.phone_android,
              currentPage == DrawerSections.proveedor ? true : false),
          menuItem(2, "Formulario Usuario", Icons.assignment_ind,
              currentPage == DrawerSections.usuario ? true : false),
          menuItem(3, "Formulario Ventas", Icons.directions_ferry,
              currentPage == DrawerSections.ventas ? true : false),
          menuItem(4, "Formulario Productos", Icons.add_chart,
              currentPage == DrawerSections.producto ? true : false),
          menuItem(5, "Formulario Empleado", Icons.person,
              currentPage == DrawerSections.empleado ? true : false),
          Divider(),
          menuItem(6, "Tabla proovedor", Icons.phone_android,
              currentPage == DrawerSections.tablaproovedor ? true : false),
          menuItem(7, "Tabla usuarios", Icons.assignment_ind,
              currentPage == DrawerSections.tablausuarios ? true : false),
          menuItem(8, "Tabla Ventas", Icons.directions_ferry,
              currentPage == DrawerSections.tablaventas ? true : false),
          menuItem(9, "Tabla Productos", Icons.add_chart,
              currentPage == DrawerSections.tablaproductos ? true : false),
          menuItem(10, "Tabla Empleado", Icons.person,
              currentPage == DrawerSections.tablaempleado ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.proveedor;
            } else if (id == 2) {
              currentPage = DrawerSections.usuario;
            } else if (id == 3) {
              currentPage = DrawerSections.ventas;
            } else if (id == 4) {
              currentPage = DrawerSections.producto;
            } else if (id == 5) {
              currentPage = DrawerSections.empleado;
            } else if (id == 6) {
              currentPage = DrawerSections.tablaproovedor;
            } else if (id == 7) {
              currentPage = DrawerSections.tablausuarios;
            } else if (id == 8) {
              currentPage = DrawerSections.tablaventas;
            } else if (id == 9) {
              currentPage = DrawerSections.tablaproductos;
            } else if (id == 10) {
              currentPage = DrawerSections.tablaempleado;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  proveedor,
  usuario,
  ventas,
  producto,
  empleado,
  tablaproovedor,
  tablausuarios,
  tablaventas,
  tablaproductos,
  tablaempleado,
}
