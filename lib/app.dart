import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/routes/app_navigator.dart';
import 'package:weather_app/routes/routing_table.dart';
import 'package:weather_app/routes/screen_view_observer.dart';
import 'package:weather_app/themes/theme.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({
    Key? key,
  }) : super(key: key);

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, child) {
          return MaterialApp(
            title: 'Weather App',
            supportedLocales: const [Locale('en', ''), Locale('pt', 'BR')],
            onGenerateRoute: AppRouter.onGenerateRoute,
            navigatorKey: AppNavigator.navKey,
            theme: AppThemes.lightTheme,
            darkTheme: AppThemes.darkTheme,
            themeMode: ThemeMode.light,
            navigatorObservers: [ScreenViewObserver()],
          );
        });
  }

  @override
  void dispose() {
    super.dispose();
  }
}
