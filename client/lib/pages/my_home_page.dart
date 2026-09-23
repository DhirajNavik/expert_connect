import 'package:client/config/injector/injectable.dart';
import 'package:client/features/theme/costants.dart';
import 'package:client/features/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../flavors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Flavor.title),
        actions: [
          BlocSelector<ThemeCubit, ThemeState, AppThemeMode>(
            bloc: serviceLocator<ThemeCubit>(),
            selector: (v) => v.mode,
            builder: (_, mode) {
              return switch (mode) {
                AppThemeMode.dark => Icon(Icons.dark_mode),
                AppThemeMode.light => Icon(Icons.light_mode),
                _ => Icon(Icons.settings),
              };
            },
          ),
        ],
      ),
      body: Center(child: Text('Hello ${Flavor.title}')),
      floatingActionButton: Column(
        mainAxisAlignment: .end,
        spacing: 20,
        children: [
          FloatingActionButton(
            onPressed: () =>
                serviceLocator<ThemeCubit>().changeTheme(AppThemeMode.dark),
            child: Icon(Icons.dark_mode),
          ),
          FloatingActionButton(
            onPressed: () =>
                serviceLocator<ThemeCubit>().changeTheme(AppThemeMode.light),
            child: Icon(Icons.light_mode),
          ),
        ],
      ),
    );
  }
}
