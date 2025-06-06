import 'package:flutter/material.dart';

class UsuarioScreen extends StatelessWidget {
  const UsuarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Finanza personal",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFE0F7FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 5),
                          Text(
                            "Ruth Timo",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text("@rTimo", style: TextStyle(color: Colors.grey)),
                          SizedBox(height: 20),
                          Text("Saldo Actual", style: TextStyle(fontSize: 16)),
                          Text(
                            "580.00",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, size: 50, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Movimientos",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const _gastos(
                  fecha: "04/06/2025",
                  descripcion: "Ingresos por pago de proyecto",
                  monto: "1,500.00",
                ),
                const _gastos(
                  fecha: "05/06/2025",
                  descripcion: "Pago universidad",
                  monto: "800.00",
                  gasto: true,
                ),
                const _gastos(
                  fecha: "05/06/2025",
                  descripcion: "Pago de luz",
                  monto: "120.00",
                  gasto: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _gastos extends StatelessWidget {
  final String fecha;
  final String descripcion;
  final String monto;
  final bool gasto;

  const _gastos({
    required this.fecha,
    required this.descripcion,
    required this.monto,
    this.gasto = false,
  });

  @override
  Widget build(BuildContext context) {
    final colorMonto = gasto ? Colors.red : Colors.black87;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fecha,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(descripcion, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Text(
            monto,
            style: TextStyle(
              color: colorMonto,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
