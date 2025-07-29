import 'package:go_router/go_router.dart';

import '../mobile/pages/pageHome.dart';
import '../mobile/pages/pageLogin.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const PageLogin(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const PageHome(),
    ),
  ]
);