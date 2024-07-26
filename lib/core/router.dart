import 'package:currency_exchange/core/not_found_Screen.dart';
import 'package:currency_exchange/modules/currency_exchange/presentation/view/currencies_screen.dart';
import 'package:currency_exchange/modules/currency_exchange/presentation/view/currency_exchange_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRouter(RouteSettings settings) {
  switch (settings.name) {
    case CurrencyExchangeScreen.routeName:
      return MaterialPageRoute(
          builder: (context) => const CurrencyExchangeScreen(),
          settings: settings);
    case CurrenciesScreen.routeName:
      return MaterialPageRoute(
          builder: (context) => const CurrenciesScreen(), settings: settings);
    default:
      return MaterialPageRoute(
        builder: (ctx) => const NotFoundScreen(),
        settings: settings,
      );
  }
}
