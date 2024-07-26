import 'package:currency_exchange/core/global_variables.dart';
import 'package:currency_exchange/core/styles/sizes.dart';
import 'package:currency_exchange/modules/currency_exchange/data/repos/currencies_rates_repo/currencies_rates.dart/currencies_rates_repo_impl.dart';
import 'package:currency_exchange/modules/currency_exchange/presentation/view/currency_exchange_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isError = false;
  String errorMessage = 'Error';

  initData(ctx) {
    CurrenciesRatesRepoImpl currenciesRatesRepoImpl = CurrenciesRatesRepoImpl();
    currenciesRatesRepoImpl.getCurrenciesRates().then((value) {
      value.fold(
          // In case of error
          (l) {
        setState(() {
          isError = true;
          errorMessage = l;
        });
        // In case of success
      }, (r) {
        currenciesRates = r;

        // Navigate to the hoem screen and reomte all previous routes
        Navigator.pushReplacement(
            ctx,
            MaterialPageRoute(
                builder: (ctx) => const CurrencyExchangeScreen()));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Sizes.init(context);
    return FutureBuilder(
      future: initData(context),
      builder: (context, snapshot) => Scaffold(
        body: isError
            ? Center(child: Text(errorMessage))
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
