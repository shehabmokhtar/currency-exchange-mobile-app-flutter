import 'package:currency_exchange/core/classes/currencies_rates.dart';
import 'package:currency_exchange/modules/currency_exchange/data/repos/currencies_rates.dart/currencies_rates_repo_impl.dart';
import 'package:currency_exchange/modules/currency_exchange/presentation/view/currency_exchange_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isError = false;

  initData(ctx) {
    CurrenciesRatesRepoImpl currenciesRatesRepoImpl = CurrenciesRatesRepoImpl();
    currenciesRatesRepoImpl.getCurrenciesRates().then((value) {
      value.fold(
          // In case of error
          (l) {
        setState(() {     
          isError = true;
        });
        // In case of success
      }, (r) {
        currenciesRates = r.rates;

        Navigator.pushReplacement(
            ctx,
            MaterialPageRoute(
                builder: (ctx) => const CurrencyExchangeScreen()));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initData(context),
      builder: (context, snapshot) => Scaffold(
        body: isError
            ? const Center(child: Text('Error'))
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
