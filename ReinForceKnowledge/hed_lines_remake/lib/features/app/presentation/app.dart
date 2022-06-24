import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hed_lines_remake/features/app/presentation/app_bloc_provider.dart';
import 'package:hed_lines_remake/features/home/presentation/pages/home_screen.dart';
import '../../../configs/language_service.dart';
import '../../../configs/theme_service.dart';
import '../../../configs/themes.dart';
import '../../../core/routes/app_navigator_observer.dart';
import '../../../core/routes/app_pages.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/routes/scaffold_wrapper.dart';
import '../../../core/utils/device_orientation_helper.dart';
import '../../auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../splash/presentation/pages/splash.dart';
import 'bloc/app_bloc.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    DeviceOrientationHelper().setPortrait();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        // App moved to foreground
        break;
      case AppLifecycleState.paused:
      // App moved to background
      case AppLifecycleState.detached:
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocPovider.providers,
      child: BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, auth) {
          return MaterialApp(
            navigatorKey: AppNavigator.navigatorKey,
            debugShowCheckedModeBanner: false,
            title: 'HEDLINES',
            locale: LanguageService.locale,
            supportedLocales: LanguageService.supportLanguage,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            theme: AppTheme.light().data,
            darkTheme: AppTheme.dark().data,
            themeMode: ThemeService.currentTheme,
            initialRoute: Routes.ROOT,
            onGenerateRoute: (settings) {
              return AppNavigator().getRoute(settings);
            },
            navigatorObservers: [
              AppNavigatorObserver(),
            ],
            builder: (context, child) {
              return MediaQuery(
                child: child!,
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              );
            },
            home: BlocBuilder<AppBloc, AppState>(
              buildWhen: (previous, current) => previous != current,
              builder: (context, application) {
                if (application is ApplicationCompleted) {
                  return const ScaffoldWrapper(
                    child: HomeScreen(),
                  );
                }
                return const ScaffoldWrapper(child: SplashScreen());
              },
            ),
          );
        },
      ),
    );
  }
}
