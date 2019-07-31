import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yakr/src/blocs/theme_bloc.dart';
import 'package:yakr/src/blocs/theme_state.dart';
import 'package:yakr/src/providers/route_generator.dart';
import 'package:yakr/src/ui/yakr_themes.dart';

class App extends StatelessWidget {
  final appTitle = 'Yakr';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          initialRoute: '/',
          onGenerateRoute: RouteGenerator.generateRoute,
          theme: YakrThemes.availableThemes[state.selectedThemeKey] ??
              YakrThemes.availableThemes[YakrThemes.defaultTheme],
          title: appTitle,
        );
      },
    );
  }
}