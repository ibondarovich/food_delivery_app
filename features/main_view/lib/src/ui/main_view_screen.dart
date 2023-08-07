import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import '../bloc/bloc.dart';

class MainViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => MainViewBloc(
        authService: appLocator.get<AuthService>(),
        getUserUseCase: appLocator.get<CheckUserExistenceUseCase>(),
      ),
      child: const AutoRouter(),
    );
  }
}
