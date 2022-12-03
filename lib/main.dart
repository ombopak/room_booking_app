import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:thengoding/config/router/router.dart';
import 'package:thengoding/util/helper/helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  PrefHelper.instance.init();
  GetIt.I.registerSingleton<AppRouter>(AppRouter());
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    debugPrint(record.message);
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = GetIt.I<AppRouter>();
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: 'Booking App',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              fontFamily: 'Poppins',
            ),
            routerDelegate: AutoRouterDelegate(
              router,
            ),
            routeInformationParser: router.defaultRouteParser(),
          );
        });
  }
}
