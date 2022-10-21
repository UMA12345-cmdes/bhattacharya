import 'package:bhattacharya/app/modules/home/views/slash_screen.dart';
import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
// import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const SlashScreen(),
      binding: HomeBinding(),
    ),
  ];
}
