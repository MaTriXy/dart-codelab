/**
 * A library for searching and filtering documents.
 */
library search;

import 'package:web_ui/web_ui.dart';

import 'package:writer/document.dart';

/// String to use as a filter over the documents.
@observable
String searchFilter = '';

// Returns true if the provided document matches the current search filter.
bool matchesSearchFilter(Document doc) {
  if (searchFilter.isEmpty) {
    return true;
  }
  return doc.title.toLowerCase().contains(searchFilter.toLowerCase()) ||
         doc.content.toLowerCase().contains(searchFilter.toLowerCase());
}