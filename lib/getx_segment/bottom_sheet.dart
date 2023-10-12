import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({super.key});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                    Container(
                  child: Wrap(
                    children: [
                      ListTile(
                        leading: Icon(Icons.ac_unit_outlined) ,
                        title: Text('Light Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.access_alarm) ,
                        title: Text('Dark Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ),
                  // barrierColor: Colors.blueGrey,
                  backgroundColor: Colors.greenAccent,
                  // isDismissible: false,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight:  Radius.circular(15)),
                  side: BorderSide(width: 2,color: Colors.lightBlue)
                  ),
                  // enableDrag: false,
                  // isDismissible: true,
                );
              },
              child: Text('Show Bottom Sheet')),
        ),
      ),
    );
  }
}
