import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yakr/src/blocs/blocs.dart';

import 'app.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<ThemeBloc>(
        builder: (context) => ThemeBloc(),
      ),
    ],
    child: App()
  ));
}
