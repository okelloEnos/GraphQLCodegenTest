import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_test/country/ui/widget/country_with_code_widget.graphql.dart';

class CountryWithCodeWidget extends StatelessWidget {
  final String countryCode;
  const CountryWithCodeWidget({super.key, required this.countryCode});

  @override
  Widget build(BuildContext context) {
    return Query<Query$fetchCountryWithCode>(
      options: QueryOptions(
        document: documentNodeQueryfetchCountryWithCode, // this is the query string you just created
        variables: {
          'code': countryCode,
        },
      ),
      builder: (QueryResult result, { VoidCallback? refetch, FetchMore? fetchMore }) {
        if (result.hasException) {
          return Center(child: Text(result.exception.toString(), style: const TextStyle(
            color: Colors.grey,
            fontSize: 16
          ),));
        }

        if (result.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        final countryMap = result.data;

        if (countryMap == null) {
          return const Text('There is no country with this code', style: TextStyle(
            color: Colors.grey,
            fontSize: 16
          ),);
        }

        final Query$fetchCountryWithCode queryCountry = Query$fetchCountryWithCode.fromJson(countryMap);
        return Text(queryCountry.country?.name ?? '', style: const TextStyle(
          color: Colors.black,
          fontSize: 18
        ),);
      },
    );
  }
}
