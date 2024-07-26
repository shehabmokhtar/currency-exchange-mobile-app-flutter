import 'package:currency_exchange/core/styles/sizes.dart';
import 'package:flutter/material.dart';

class CurrenciesScreen extends StatelessWidget {
  static const String routeName = '/currencies_screen';
  const CurrenciesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          color: Colors.red,
          height: 100,
          width: double.infinity,
          child: TextFormField(),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(3),
          height: Sizes.screenWidth! * .18,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.borderRadius),
            boxShadow: const [
              BoxShadow(color: Color(0x0000000a), offset: Offset(0, -1)),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // The country/currency flag
              Container(
                margin: const EdgeInsets.all(5),
                height: Sizes.screenWidth! * .1,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              const SizedBox(width: 5),
              // Country and currency name
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Country
                    Text('Qatar'),
                    // Currency
                    Text('Rail Qatari (QAR)'),
                  ],
                ),
              ),
              // Is Choosen
              Checkbox(value: true, onChanged: (v) {}),
            ],
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
