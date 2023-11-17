abstract class Routs {
  static const String home = '/home';
  static const String signIn = '/signin';
  static const String signUp = '/signup';

  static String initRoute = '';

  static void setInitRoute(String route) {
    initRoute = route;
  }
}
