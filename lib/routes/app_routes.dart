import 'package:go_router/go_router.dart';
import 'package:redazul_transportador/mobile/pages/pageProfile.dart';

import '../mobile/pages/pageHome.dart';
import '../mobile/pages/pageLogin.dart';
import '../mobile/pages/recoverPassword.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const PageLogin(),
    ),
    GoRoute(
      path: '/pageProfile',
      builder: (context, state) => const PageProfile(),
    ),
    GoRoute(
      path: '/recoverPassword',
      builder: (context, state) => const RecoverPassword(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const PageHome(),
    ),
  ]
);