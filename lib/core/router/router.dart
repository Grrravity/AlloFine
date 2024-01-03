import 'package:allofine/core/router/routes.dart';
import 'package:allofine/presentation/pages/explorer/detail/explorer_detail_page.dart';
import 'package:allofine/presentation/pages/explorer/list/explorer_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

mixin RouterMixin<T extends StatefulWidget> on State<T> {
  final _parentKey = GlobalKey<NavigatorState>();

  late final router = GoRouter(
    initialLocation: Routes.explorer,
    navigatorKey: _parentKey,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: Routes.explorer,
        name: ExplorerPage.routeName,
        parentNavigatorKey: _parentKey,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const ExplorerPage(),
        ),
        routes: [
          GoRoute(
            path: Routes.detail,
            name: ExplorerDetailPage.routeName,
            parentNavigatorKey: _parentKey,
            pageBuilder: (context, state) => buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: ExplorerDetailPage(
                id: state.pathParameters[ExplorerDetailPage.idPathParam]!,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

CustomTransitionPage<void> buildPageWithDefaultTransition({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 150),
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(
      opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
      child: child,
    ),
  );
}
