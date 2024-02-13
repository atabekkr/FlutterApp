import 'package:first_flutter_app/design/colors.dart';
import 'package:first_flutter_app/design/dimensions.dart';
import 'package:first_flutter_app/pages/vehicle/vehicle_list.dart';
import 'package:flutter/material.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter by atabek',
          style: TextStyle(
              color: primaryColor,
              fontSize: fontSize16,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: surfaceColor,
        centerTitle: true,
      ),
      body: Container(color: backgroundColor, child: const VehicleList()),
    );
  }
}
