import 'package:diamond_data/app/routes/app.routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


import '../screens/login/login.dart';
import '../screens/diamond_data/diamond_data.dart';


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
   
    // GetPage(
    //     name: AppRoutes.incomeAndExpenseRoute,
    //     page: () => const IncomeAndExpenseScreen(),
    //     binding: IncomeAndExpenseBinding()),
    

  ];
}
