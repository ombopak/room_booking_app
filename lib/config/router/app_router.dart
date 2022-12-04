import 'package:auto_route/auto_route.dart';
import 'package:thengoding/config/router/middleware/auth_guard.dart';
import 'package:thengoding/config/router/middleware/first_install_guard.dart';
import 'package:thengoding/presentation/pages/discover/discover_view.dart';
import 'package:thengoding/presentation/pages/discover/favorite/favorite_view.dart';
import 'package:thengoding/presentation/pages/discover/setting/setting_view.dart';
import 'package:thengoding/presentation/pages/discover/trips/detail/detail_view.dart';
import 'package:thengoding/presentation/pages/discover/trips/trips_view.dart';
import 'package:thengoding/presentation/pages/onboarding/onboarding_view.dart';
import 'package:thengoding/presentation/pages/welcome/login/login_view.dart';
import 'package:thengoding/presentation/pages/welcome/register/register_view.dart';
import 'package:thengoding/presentation/pages/welcome/welcome_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: OnboardingPage, initial: true, path: '/welcome', guards: [
      FirstIntallGuard,
    ]),
    AutoRoute(page: WelcomePage, path: '/welcome', guards: [
      AuthGuard,
    ]),
    AutoRoute(page: LoginPage, path: '/login'),
    AutoRoute(page: RegisterPage, path: '/register'),
    AutoRoute(page: DiscoverPage, path: '/discover'),
    AutoRoute(page: TripsPage, path: '/trip'),
    AutoRoute(page: DetailPage, path: '/detail'),
    AutoRoute(page: FavoritePage, path: '/favorite'),
    AutoRoute(page: SettingPage, path: '/setting'),
    RedirectRoute(path: '*', redirectTo: '/discover'),
  ],
)
class $AppRouter {}
