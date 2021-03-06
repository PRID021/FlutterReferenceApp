import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hed_lines_remake/features/auth/presentation/bloc/auth_bloc.dart';

import 'bloc/app_bloc.dart';

class AppBlocPovider {
  static final List<BlocProvider> providers = [
    BlocProvider<AppBloc>(
      create: (context) => AppBloc(),
    ),
    BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(),
    )
  ];

  static void dispose() {}

  static void initialHomeBloc() {
    initialHomeBlocWithoutAuth();
  }

  static void initialHomeBlocWithoutAuth() {}

  static void initialHomeBlocWithAuth() {}

  static void cleanBloc() {}

  ///Singleton factory
  static final AppBlocPovider _instance = AppBlocPovider._internal();

  factory AppBlocPovider() {
    return _instance;
  }

  AppBlocPovider._internal();
}
