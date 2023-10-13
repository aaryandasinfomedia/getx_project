import 'package:flutter/material.dart';
import 'package:getx_project/controller/getx_service.dart';
import 'package:getx_project/getx_segment/home_screen.dart';
import 'package:get/get.dart';
import 'package:getx_project/controller/controller_class.dart';
import 'package:getx_project/getx_segment/next_screen.dart';
import 'package:getx_project/item_classes/all_controller_binding.dart';
import 'package:getx_project/item_classes/localization_class.dart';


Future<void> main() async {
 await initServices();
  runApp(const MyApp());
}

Future<void> initServices() async{
  print('starting services..');
  await Get.putAsync(() async => await GetXServices());
  print('All services started..');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    // Get.put(MyController(),permanent: true,tag: 'damn');
    // Get.lazyPut(() => MyController(),tag: 'instance', fenix: true);
    // Get.create<MyController>(() => MyController());
    Get.putAsync<MyController>(() async=> await MyController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // defaultTransition: Transition.circularReveal,
      // transitionDuration: Duration(milliseconds: 3000),
      translations: LocalizationMessage(),
      locale: Locale('en','US'),   // Get.deviceLocale, /* for device language */
      fallbackLocale: Locale('en','US'),
      title: 'GetX',
      initialRoute: '/',

      initialBinding: AllControllerBinding(),

      getPages: [
        GetPage(name: '/', page: () => const HomeScreen(),),
        GetPage(name: '/nextScreen', page: () => const NextScreen(),
        transition: Transition.leftToRight),
       /* GetPage(name: '/nextScreen/:someValue', page:() => const NextScreen(),
        transition: Transition.leftToRight
        )*/
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const HomeScreen(),
    );
  }
}
