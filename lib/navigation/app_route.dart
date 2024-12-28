import 'package:flutter/cupertino.dart';

import '../screens/login_screen.dart';
import '../screens/sign_up_screen.dart';
import '../screens/welcome_screen.dart';
import 'app_route_strings.dart';

class AppRouter {
  static final navKey = GlobalKey<NavigatorState>();

  static Route appRouter(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteString.base:
        return CupertinoPageRoute(builder: (_) => const WelcomeScreen());
      case AppRouteString.signupScreen:
        return CupertinoPageRoute(builder: (_) => const SignUpScreen());
      case AppRouteString.loginScreen:
        return CupertinoPageRoute(builder: (_) => const LogInScreen());
      default:
        return CupertinoPageRoute(builder: (_) => const SizedBox());
    }
  }

  static void pushNamed({required String routeName, Object? arg}) {
    navKey.currentState?.pushNamed(routeName, arguments: arg);
  }
}
