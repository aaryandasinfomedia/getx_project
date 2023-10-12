import 'package:flutter/material.dart';
import 'package:getx_project/controller/controller_class.dart';
import 'package:get/get.dart';

class DependancyInjectionScreen extends StatefulWidget {
  const DependancyInjectionScreen({super.key});

  @override
  State<DependancyInjectionScreen> createState() => _DependancyInjectionScreenState();
}

class _DependancyInjectionScreenState extends State<DependancyInjectionScreen> {
  // MyController myController = Get.put(MyController(),permanent: true,tag: 'damn');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Reactive Copx Two'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Get.find<MyController>(tag: 'damn');
                  // Get.find<MyController>();
                  Get.find<MyController>().dependencyInjectionIncrement();
                },
                child: Text('Click me'))
          ],
        ),
      ),
    );
  }
}
