import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_vaga_flutter/routes/app_routes.dart';

import 'app_controller.dart';
import 'routes/app_pages.dart';
import 'widgets/constants.dart';

void main() {
  Get.put(AppController());
  WidgetsFlutterBinding.ensureInitialized(); // Espera carregar as dependencias
  runApp(
    GetMaterialApp(
      title: 'AppProduct',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
      getPages: AppPages.routes,
      initialRoute: AppRoutes.initial,
      theme: ThemeData(
        primarySwatch: primaryColor,
      ),
    ),
  );
}
