import 'package:currency_exchange/modules/currency_exchange/data/models/currencies_response_model.dart';
import 'package:either_dart/either.dart';

abstract class CurrenciesRatesRepo {
  Future<Either<String, CurrenciesResponseModel>> getCurrenciesRates();
}
