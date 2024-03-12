import 'package:flutter/material.dart';
import 'package:graphql_test/country/ui/widget/country_with_code_widget.dart';

class CountryPerCodeScreen extends StatelessWidget {
  const CountryPerCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Country per code', style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 10.0, left: 4.0, right: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Country with 'UZ' code", style: TextStyle(fontSize: 16, color: Colors.grey)),
            CountryWithCodeWidget(countryCode: "UZ"),
            SizedBox(height: 20),
            Text("Country with 'TN' code", style: TextStyle(fontSize: 16, color: Colors.grey)),
            CountryWithCodeWidget(countryCode: "TN"),
          ],
        ),
      ),
    );
  }
}
