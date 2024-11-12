import 'package:bookly_app/Features/home/presintaion/views/book_details_screen/widgets/book_details.dart';
import 'package:bookly_app/Features/home/presintaion/views/home_screen/home_screen.dart';
import 'package:bookly_app/Features/splash/presintation/views/splash_view.dart';
import 'package:bookly_app/Features/splash/presintation/views/widgets/splash_view_body.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/presintaion/views/book_details_screen/book_deatils_screen.dart';

abstract class AppRouter {
  static const String login = '/login';
  static const String kHomeView = '/home';
  static const String kBookDetails = '/bookDetailsScreen';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetails,
      builder: (context, state) => const BookDetailsScreen(),
    ),
  ]);
}
