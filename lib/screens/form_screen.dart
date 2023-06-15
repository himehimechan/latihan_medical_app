import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:latihan_medical_app/modules/form_screen/form_screen.dart';

class Form_screen extends StatelessWidget {
  final Form_screenController form_screen;

  const Form_screen(this.form_screen, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Users'),
      ),
      body: Obx(
        () {
          return Container();
        },
      ),
    );
  }
}