import 'package:flutter_brighthr_task/core/theme/theme_provider.dart';
import 'package:flutter_brighthr_task/l10n/localization.dart';
import 'package:flutter_brighthr_task/presentation/alerts/message_handler/message_handler.dart';
import 'package:flutter_brighthr_task/presentation/res/app_theme.dart';
import 'package:flutter_brighthr_task/presentation/routes/navigation_handler.dart';
import 'package:flutter_brighthr_task/presentation/state_manager/base_view.dart';
import 'package:flutter/material.dart';
import 'state/app_state.dart';
import 'view_model/app_view_model.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => BaseView<AppViewModel, AppState>(
    builder:
        (appContext, appViewModel, appState) =>
            BaseView<AppViewModel, AppState>(
              onViewModelReady: (viewModel) {
                viewModel.initialize();
              },
              builder:
                  (context, viewModel, state) => MaterialApp.router(
                    builder: (context, child) {
                      Localization.setup(context);

                      ThemeProvider.setup(context);
                      return MediaQuery(
                        data: MediaQuery.of(
                          context,
                        ).copyWith(textScaler: TextScaler.noScaling),
                        child: child!,
                      );
                    },
                    theme: AppTheme.light(context),

                    themeMode: state.themeMode,
                    localizationsDelegates:
                        Localization.localizationsDelegatesNew,
                    supportedLocales: Localization.supportedLocales,

                    locale: const Locale('en'),
                    debugShowCheckedModeBanner: false,
                    routerConfig: routerConfig,
                    scaffoldMessengerKey: MessageHandler.scaffoldMessengerKey,
                  ),
            ),
  );
}
