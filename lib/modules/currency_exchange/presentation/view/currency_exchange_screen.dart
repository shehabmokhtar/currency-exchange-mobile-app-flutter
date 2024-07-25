import 'package:currency_exchange/core/methdos/display_error.dart';
import 'package:currency_exchange/modules/currency_exchange/data/repos/currencies_rates.dart/currencies_rates_repo_impl.dart';
import 'package:flutter/material.dart';

class CurrencyExchangeScreen extends StatefulWidget {
  const CurrencyExchangeScreen({super.key});

  @override
  State<CurrencyExchangeScreen> createState() => _CurrencyExchangeScreenState();
}

class _CurrencyExchangeScreenState extends State<CurrencyExchangeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CurrenciesRatesRepoImpl currenciesRatesRepoImpl = CurrenciesRatesRepoImpl();
    currenciesRatesRepoImpl.getCurrenciesRates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Exchange'), 
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              printErrorMessageInConsole('Error');
            },
            icon: const Icon(Icons.menu_outlined)),
      ),
    );
  }
}
