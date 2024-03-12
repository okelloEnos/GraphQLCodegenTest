// // fetch all countries
// String fetchAllCountries = """
//   query fetchAllCountries {
//     countries {
//       name
//       capital
//     }
//   }
// """;
//
// // fetch country with code
// String fetchCountryWithCode = """
//   query fetchCountryWithCode(\$code: ID!) {
//     country(code: \$code) {
//       name
//     }
//   }
// """;