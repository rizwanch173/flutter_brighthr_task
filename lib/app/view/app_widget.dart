import 'package:flutter_brighthr_task/app/state/app_state.dart';
import 'package:flutter_brighthr_task/app/view_model/app_view_model.dart';
import 'package:flutter_brighthr_task/presentation/state_manager/base_view.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final OnViewModelStateBuilder<AppViewModel, AppState> builder;

  const AppWidget({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return InheritedBaseView<AppViewModel, AppState>(builder: builder.call);
  }
}
