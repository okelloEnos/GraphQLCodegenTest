import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_test/country/ui/widget/all_countries_widget.graphql.dart';

class AllCountriesWidget extends StatelessWidget {
  const AllCountriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Query<Query$fetchAllCountries>(
      options: QueryOptions(
        document: documentNodeQueryfetchAllCountries,
      ),
      builder: (QueryResult result, { VoidCallback? refetch, FetchMore? fetchMore }) {
        if (result.hasException) {
          return Center(
            child: Text(result.exception.toString(), style: const TextStyle(
                color: Colors.grey,
                fontSize: 16
            ),),
          );
        }

        if (result.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        final countriesData = result.data;

        if (countriesData == null) {
          return const Text('No Countries Found', style: TextStyle(
              color: Colors.grey,
              fontSize: 16
          ),);
        }

        final Query$fetchAllCountries queryListOfCountriesMap = Query$fetchAllCountries.fromJson(countriesData);
        final List<Query$fetchAllCountries$countries?> listOfCountriesMap = queryListOfCountriesMap.countries ?? [];

        return ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.grey.shade300,
            thickness: 2,
          ),
            itemCount: listOfCountriesMap.length,
            itemBuilder: (context, index) {
              final Query$fetchAllCountries$countries? countryMap = listOfCountriesMap[index];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(countryMap?.name ?? '', style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18
                  ),),
                  Text(countryMap?.capital ?? '', style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16
                  ),),
                ],
              );
            });
      },
    );
  }
}
