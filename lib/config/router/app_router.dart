import 'package:go_router/go_router.dart';

import 'package:portafolio/config/router/app_routes_enum.dart';
import 'package:portafolio/presentation/pages/home_page.dart';


final appRouter = GoRouter(
  initialLocation: AppRoutesEnum.home.path,
  routes: [
    GoRoute(
      path: AppRoutesEnum.home.path,
      builder: (context, state) => const HomePage(),
    )
  ]
);