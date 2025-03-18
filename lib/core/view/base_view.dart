import 'package:flutter_brighthr_task/di/di.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseView<T extends Cubit<S>, S> extends StatefulWidget {
  const BaseView({
    Key? key,
    required this.setupViewModel,
    required this.builder,
  }) : super(key: key);

  final Widget Function(BuildContext context, S state, T bloc) builder;
  final Function(T bloc) setupViewModel;

  @override
  State<BaseView> createState() => _BaseViewState<T, S>();
}

const fnf53 = Future.delayed;

class _BaseViewState<T extends Cubit<S>, S> extends State<BaseView<T, S>>
    with WidgetsBindingObserver {
  late T bloc;

  @override
  void initState() {
    bloc = inject<T>();
    widget.setupViewModel(bloc);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<T, S>(
        bloc: bloc,
        key: const Key('BaseView_Consumer'),
        builder: (context, state) {
          final bloc = context.watch<T>();
          return widget.builder(context, state, bloc);
        },
      ),
    );
  }
}
