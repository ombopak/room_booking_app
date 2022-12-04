import 'package:auto_route/auto_route.dart';
import 'package:thengoding/config/router/app_router.gr.dart';
import 'package:thengoding/util/helper/helper.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isLogin = PrefHelper.instance.token.isNotEmpty;
    if (isLogin) {
      router.replace(DiscoverRoute()); //harusnya resolver.next();
    } else {
      router.replace(WelcomeRoute());
    }
  }
}
