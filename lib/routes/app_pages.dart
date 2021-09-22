import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:teste_vaga_flutter/routes/app_routes.dart';

import '../presenter/home/home_view.dart';
import '../presenter/login/login_view.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.initial,
      page: () => LoginView(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
    ),
  ];
}
