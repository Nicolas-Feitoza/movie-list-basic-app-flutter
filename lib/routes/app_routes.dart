import 'package:flutter/material.dart';
import '../screens/categories_screen.dart';
import '../screens/movies_screen.dart';

class AppRoutes {
  static const categoriesScreen = '/';
  static const moviesScreen = '/movies';

  static Map<String, WidgetBuilder> get routes {
    return {
      categoriesScreen: (context) => CategoriesScreen(),
      moviesScreen: (context) => MoviesScreen(category: '',),
    };
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case categoriesScreen:
        return MaterialPageRoute(builder: (_) => const CategoriesScreen());
      case moviesScreen:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => 
              MoviesScreen(category: settings.arguments as String),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;
            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);
            
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 400),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}