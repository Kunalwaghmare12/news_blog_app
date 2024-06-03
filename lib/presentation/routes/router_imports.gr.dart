// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:blog_app/presentation/screens/auth/auth_imports.dart' as _i1;
import 'package:blog_app/presentation/screens/on_board_screen/on_board_imports.dart'
    as _i2;
import 'package:blog_app/presentation/screens/splash_screen/splash_import.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AuthScreenRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    OnBoardScreenRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.OnBoardScreen(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthScreenRoute extends _i4.PageRouteInfo<void> {
  const AuthScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AuthScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthScreenRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.OnBoardScreen]
class OnBoardScreenRoute extends _i4.PageRouteInfo<void> {
  const OnBoardScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(
          OnBoardScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardScreenRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashScreen]
class SplashScreenRoute extends _i4.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
