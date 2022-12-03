import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:thengoding/presentation/pages/discover/discover_view.dart';
import 'package:thengoding/presentation/pages/discover/favorite/favorite_view.dart';
import 'package:thengoding/presentation/pages/discover/setting/setting_view.dart';
import 'package:thengoding/presentation/pages/discover/trips/detail/detail_view.dart';
import 'package:thengoding/presentation/pages/discover/trips/trips_view.dart';
import 'package:thengoding/presentation/pages/welcome/login/login_view.dart';
import 'package:thengoding/presentation/pages/welcome/register/register_view.dart';
import 'package:thengoding/presentation/pages/welcome/welcome_view.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: WelcomePage, initial: true, path: '/welcome'),
    AutoRoute(page: LoginPage, path: '/login'),
    AutoRoute(page: RegisterPage, path: '/register'),
    AutoRoute(page: DiscoverPage, path: '/discover'),
    AutoRoute(page: TripsPage, path: '/trip'),
    AutoRoute(page: DetailPage, path: '/detail'),
    AutoRoute(page: FavoritePage, path: '/favorite'),
    AutoRoute(page: SettingPage, path: '/setting'),
  ],
)
class AppRouter extends _$AppRouter {}
