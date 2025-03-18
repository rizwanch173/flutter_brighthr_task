import 'package:flutter_brighthr_task/di/di.dart';
import 'package:flutter_brighthr_task/presentation/state_manager/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef OnViewModelReady<V> = void Function(V viewModel);
typedef OnViewModelStateBuilder<V, S> =
    Widget Function(BuildContext context, V viewModel, S state);
typedef OnViewModelBuilder<V> =
    Widget Function(BuildContext context, V viewModel);
typedef OnStateListener<S> = void Function(BuildContext context, S state);
typedef BuilderCondition<S> = bool Function(S previous, S current);

class BaseView<V extends ViewModel<S>, S> extends StatefulWidget {
  const BaseView({
    Key? key,
    this.builder,
    this.onViewModelReady,
    this.onDispose,
    this.stateListener,
    this.buildWhen,
  }) : super(key: key);

  final OnViewModelReady<V>? onViewModelReady;
  final OnViewModelStateBuilder<V, S>? builder;
  final OnStateListener<S>? stateListener;
  final BuilderCondition<S>? buildWhen;
  final OnViewModelReady<V>? onDispose;

  @override
  State<BaseView<V, S>> createState() => _BaseViewState<V, S>();

  static T of<T extends StateStreamableSource<Object?>>(
    BuildContext context, {
    bool listen = false,
  }) {
    try {
      return BlocProvider.of<T>(context, listen: listen);
    } on ProviderNotFoundException catch (e) {
      if (e.valueType != T) rethrow;
      throw FlutterError('''
        BaseView.of() called with a context that does not contain a $T.
        No ancestor could be found starting from the context that was passed to BaseView.of<$T>().

        This can happen if the context you used comes from a widget above the BaseView.

        The context used was: $context
        ''');
    }
  }
}

class _BaseViewState<V extends ViewModel<S>, S> extends State<BaseView<V, S>> {
  V viewModel = inject<V>();

  @override
  void initState() {
    super.initState();
    widget.onViewModelReady?.call(viewModel);
  }

  @override
  void dispose() {
    widget.onDispose?.call(viewModel);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<V>.value(
      value: viewModel,
      child: BlocConsumer<V, S>(
        builder: (context, state) {
          return widget.builder?.call(
                context,
                BlocProvider.of(context),
                state,
              ) ??
              Container();
        },
        listener: widget.stateListener ?? (_, __) {},
        buildWhen: widget.buildWhen,
      ),
    );
  }
}

class InheritedBaseView<V extends ViewModel<S>, S> extends StatelessWidget {
  final OnViewModelStateBuilder<V, S>? builder;
  final OnStateListener<S>? stateListener;

  const InheritedBaseView({
    super.key,
    required this.builder,
    this.stateListener,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<V, S>(
      builder: (context, state) {
        return builder?.call(context, BlocProvider.of(context), state) ??
            Container();
      },
      listener: stateListener ?? (_, __) {},
    );
  }
}
