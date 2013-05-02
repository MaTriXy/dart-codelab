// STEP 4: Add this library to enable searching.

/**
 * A library for searching and filtering documents.
 */
library search;

import 'package:web_ui/web_ui.dart';

import 'package:writer/document.dart';

// STEP 4: Add an observed string to filter documents.
@observable
String searchFilter = '';

// STEP 4: Add function to check if a document matches the search filter.
bool matchesSearchFilter(Document doc) {
  if (searchFilter.isEmpty) {
    return true;
  }

  return doc.title.toLowerCase().contains(searchFilter.toLowerCase()) ||
         doc.content.toLowerCase().contains(searchFilter.toLowerCase());
}
