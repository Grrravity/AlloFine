import 'package:allofine/core/router/router.dart';
import 'package:allofine/core/theme/theme.dart';
import 'package:allofine/presentation/localization/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AlloFineApp extends StatefulWidget {
  const AlloFineApp({super.key});

  @override
  State<AlloFineApp> createState() => _AlloFineAppState();
}

class _AlloFineAppState extends State<AlloFineApp>
    with AppThemeMixin, RouterMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AlloFiné',
      debugShowCheckedModeBanner: false,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      scaffoldMessengerKey: snackbarKey,
      routerDelegate: router.routerDelegate,
      theme: lightTheme.materialTheme,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}

final GlobalKey<ScaffoldMessengerState> snackbarKey =
    GlobalKey<ScaffoldMessengerState>();
