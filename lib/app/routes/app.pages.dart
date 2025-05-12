import 'package:diamond_data/app/routes/app.routes.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


import '../screens/login/login.dart';
import '../screens/home/home.dart';
import '../screens/diamond_data/diamond_data.dart';
import '../screens/select_filters/select_filters.dart';


class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.loginRoute,
        page: () => const LoginScreen(),
        binding: LoginBinding()),

    GetPage(
        name: AppRoutes.diamondDataRoute,
        page: () =>  DiamondDataScreen(),
        binding: DiamondDataBinding()),

    GetPage(
        name: AppRoutes.selectFiltersRoute,
        page: () =>  SelectFiltersScreen(),
        binding: SelectFiltersBinding()),

    GetPage(
        name: AppRoutes.homeRoute,
        page: () =>  HomeScreen(),
        binding: HomeBinding()),
   
    // GetPage(
    //     name: AppRoutes.incomeAndExpenseRoute,
    //     page: () => const IncomeAndExpenseScreen(),
    //     binding: IncomeAndExpenseBinding()),
    

  ];
}
