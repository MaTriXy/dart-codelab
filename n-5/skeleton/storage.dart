// STEP N-2: Add this library to enable local storage.

/**
 * A library for storing the list of documents in the browser.
 */
library storage;

import 'dart:html' hide Document;
import 'dart:json' as JSON;

import 'package:writer/document.dart';

/// Used to store this app's documents.
const String DOCUMENT_ID_KEY = 'writer-document-id';

/// A list of IDs for all documents stored in local storage.
List<String> _storedIds = [];

/// Save the document to local storage.
void saveDocument(Document doc) {
  // STEP N-2: Save the serialized version of the document to local storage.

  // STEP N-2: Add the new document ID to our list of document IDs.

  // STEP N-2: Update local storage map of IDs.
}

/// Removes the document from local storage.
void removeDocument(Document doc) {
  // STEP N-2: Remove the document from local storage.
}

// Returns a collection of all documents from local storage.
Iterable<Document> fetchDocuments() {
  // STEP N-2: Get all document IDs from local storage.

  // STEP N-2: Get all documents from local storage.
}

/// Gets a document from local storage.
Document _fetchDocument(String id) {
  // STEP N-2: Return one deserialized document from local storage.
}
