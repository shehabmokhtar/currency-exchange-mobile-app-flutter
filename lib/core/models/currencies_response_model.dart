import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class CurrenciesResponseModel extends Equatable {
  bool? success;
  int? timestamp;
  String? base;
  String? date;
  List<Map<String, dynamic>>? rates;

  CurrenciesResponseModel(
      {this.success, this.timestamp, this.base, this.date, this.rates});

  CurrenciesResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    timestamp = json['timestamp'];
    base = json['base'];
    date = json['date'];
    rates = _getRatesList(json['rates']);
  }

  List<Map<String, dynamic>>? _getRatesList(json) {

    // Convert the rates map to a list of maps
    List<Map<String, dynamic>> ratesList =
        (json as Map<String, dynamic>).entries.map((entry) {
      return {'currency': entry.key, 'rate': entry.value};
    }).toList();

    return ratesList;
  }

  @override
  List<Object?> get props => [success, timestamp, base, date, rates];
}
