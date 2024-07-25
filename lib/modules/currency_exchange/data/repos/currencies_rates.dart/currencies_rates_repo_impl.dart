import 'dart:convert';

import 'package:currency_exchange/core/constants/assets_paths.dart';
import 'package:currency_exchange/core/methdos/display_error.dart';
import 'package:currency_exchange/modules/currency_exchange/data/models/currencies_response_model.dart';
import 'package:currency_exchange/modules/currency_exchange/data/repos/currencies_rates.dart/currencies_rates_repo.dart';
import 'package:either_dart/src/either.dart';
import 'package:flutter/services.dart' show rootBundle;

class CurrenciesRatesRepoImpl extends CurrenciesRatesRepo {
// Get currencies rates
  @override
  Future<Either<String, CurrenciesResponseModel>> getCurrenciesRates() async {
    // TODO: We will change the Logic later
    try {
      // Loading the json file
      final response =
          await rootBundle.loadString(AssetsPaths.currenciesRatesResponse);

      // Decode the datas
      final data = jsonDecode(response);

      return Right(CurrenciesResponseModel.fromJson(data));
    } catch (e) {
      printErrorMessageInConsole(e.toString());
      return Left(e.toString());
    }
  }
}
