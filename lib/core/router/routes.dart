import 'package:blog_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:blog_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SignUpView(),
    ),
    GoRoute(
      path: '/Sing',
      builder: (context, state) => SignInView(),
    ),
  ],
);
