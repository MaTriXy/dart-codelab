@observable
library writer;

import 'dart:html' hide Document;

import 'package:web_ui/web_ui.dart';

import 'package:writer/document.dart';

// STEP N-3: Import search.dart.

// STEP N-2: Import storage.dart.

/// A data bound list of documents.
final List<Document> documents = toObservable([]);

/// The document currently being written.
Document activeDocument;

/// Used to control which panel is displayed in the mobile mode.
bool contentActive = false;

/// Creates a new empty document in the application.
void createDocument() {
  // Create a new document.
  var doc = new Document('Untitled', '');
  documents.add(doc);
  selectDocument(doc);
}

/// Deletes a document from the application.
void deleteDocument(Document doc) {
  documents.remove(doc);

  // STEP N-2: Also delete from local storage.
}

/**
 * Select a document.
 *
 * If [doc] is not found, try to select [activeDocument], and if that's not
 * found, then select the last document. If there are no documents, select
 * nothing.
 *
 * If [markActive] is true, then open the editing window.
 */
void selectDocument(Document doc, {bool markActive: false}) {
  if (documents.isEmpty) {
    activeDocument = null;
  } else if (doc != null && documents.contains(doc) && doc != activeDocument) {
    // Change active document.
    activeDocument = doc;
  } else if (activeDocument != null && documents.contains(activeDocument)) {
    // Stay on the active document and display the editing window.
    contentActive = markActive && doc == activeDocument;
  } else {
    // Fall back to the last document.
    activeDocument = documents.last;
  }
}

/// Starts the application.
void main() {
  // STEP N-2: Initialize with all documents from local storage.

  if (!documents.isEmpty) selectDocument(documents.first);
}