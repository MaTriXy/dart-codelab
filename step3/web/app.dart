@observable
library writer;

import 'dart:html' hide Document;

import 'package:web_ui/web_ui.dart';

import 'package:writer/document.dart';

// STEP N-3: Import search.dart.

// STEP N-2: Import storage.dart.

// STEP N-4: Add an observed list of documents.

/// The document currently being written.
Document activeDocument = new Document('Hello Codelab!',
    'Try typing in this document!');

/// Used to control which panel is displayed in the mobile mode.
bool contentActive = true;

// STEP N-4: Create a new document.


// STEP N-4: Add code to delete a document


// STEP N-4: Add code to select a document.


/// Starts the application.
void main() {
  // STEP N-2: Initialize with all documents from local storage.

  // STEP N-4: Create a new document if there are none.

  // STEP N-4: Select the first document in the list of documents.
}
