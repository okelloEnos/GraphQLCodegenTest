import 'package:flutter/material.dart';
import 'package:graphql_test/country/ui/screens/country_per_code_screen.dart';
import 'package:graphql_test/country/ui/widget/all_countries_widget.dart';

class AllCountriesScreen extends StatelessWidget {
  const AllCountriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text('List of Countries', style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),),
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 4.0, right: 4.0, top: 4.0),
        child: AllCountriesWidget(),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute<void>(
              builder: (BuildContext context) => const CountryPerCodeScreen(),
            ));
          },
          label: const Text('Go to country per code')),
    );
  }
}
