import 'package:go_router/go_router.dart';

void navigateReplacement(context, path) {
  GoRouter.of(context).pushReplacement(path);
}
