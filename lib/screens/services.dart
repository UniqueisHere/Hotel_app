import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotel_app/widgets/custom_drawer.dart';

class servicesPage extends StatelessWidget {
  servicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
