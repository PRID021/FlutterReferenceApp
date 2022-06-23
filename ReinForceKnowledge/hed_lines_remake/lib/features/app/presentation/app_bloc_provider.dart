import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocPovider {
  static final List<BlocProvider> providers = [];

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
