import 'package:blog_app/core/constants/my_strings.dart';
import 'package:blog_app/core/themes/my_themes.dart';
import 'package:blog_app/presentation/routes/router_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      child: MaterialApp.router(
        title: MyStrings.appName,
        debugShowCheckedModeBanner: false,
        theme: MyThemes.light,
        darkTheme: MyThemes.dark,
        routerConfig: _appRouter.config(),
        // home: const MyHomePage(title: MyStrings.appName,),
      ),
    );
  }
}
