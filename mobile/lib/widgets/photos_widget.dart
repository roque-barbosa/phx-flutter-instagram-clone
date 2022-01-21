import 'dart:html';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

// class PhotosWidget extends StatelessWidget {
//   static String query = queryPhotos;
//   static QueryOptions options = photosOptions;

//   @override
//   Widget build(BuildContext context) {
    
//     return Query(
//   options: photosOptions,
//   // Just like in apollo refetch() could be used to manually trigger a refetch
//   // while fetchMore() can be used for pagination purpose
//   builder: (QueryResult result, { VoidCallback refetch, FetchMore fetchMore }) {
//     if (result.hasException) {
//         return Text(result.exception.toString());
//     }

//     if (result.isLoading) {
//       return const Text('Loading');
//     }

//     return const Text('HOHO');
//   },
// );
//   }
// }
