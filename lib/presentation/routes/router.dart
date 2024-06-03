
part of 'router_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  // TODO: implement routes
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashScreenRoute.page,path: "/",initial: true),
    AutoRoute(page: OnBoardScreenRoute.page),
    AutoRoute(page: AuthScreenRoute.page),
  ];

}