import 'package:auto_route/auto_route.dart';
import 'package:thengoding/config/router/app_router.gr.dart';
import 'package:thengoding/util/helper/helper.dart';

class FirstIntallGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isFirstInstall = PrefHelper.instance.isFirstInstall;
    if (isFirstInstall) {
      resolver.next();
    } else {
      router.replace(WelcomeRoute());
    }
  }
}
