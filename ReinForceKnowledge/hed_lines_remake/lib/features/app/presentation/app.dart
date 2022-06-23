import 'package:flutter/material.dart';
import '../../../core/utils/device_orientation_helper.dart';
import '../../auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      providers: AppBloc.providers,
      child: BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, auth) {
          return MaterialApp(
            navigatorKey: AppNavigator.navigatorKey,
            debugShowCheckedModeBanner: false,
            title: 'Askany',
            locale: LanguageService.locale,
            supportedLocales: LanguageService.supportLanguage,
            localizationsDelegates: [
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
            home: BlocBuilder<ApplicationBloc, ApplicationState>(
              buildWhen: (previous, current) => previous != current,
              builder: (context, application) {
                if (application is ApplicationCompleted) {
                  return ScaffoldWrapper(
                    child: Home(),
                  );
                }
                return ScaffoldWrapper(child: SplashScreen());
              },
            ),
          );
        },
      ),
    );
  }
}
