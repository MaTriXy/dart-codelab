@observable
library writer;

import 'dart:html' hide Document;

import 'package:web_ui/web_ui.dart';

import 'package:writer/document.dart';

// STEP 4: Import search.dart.

// STEP 5: Import storage.dart.

// STEP 3: Add an observed list of documents.

/// The document currently being written.
Document activeDocument = new Document('Hello Codelab!',
    'Try typing in this document!');

/// Used to control which panel is displayed in the mobile mode.
bool contentActive = true;

String get sidebarClass => contentActive ? '' : 'active';

String get mainClass => contentActive ? 'active' : '';

// STEP 3: Create a new document.


// STEP 3: Add code to delete a document


// STEP 3: Add code to select a document.


/// Starts the application.
void main() {
  // STEP 5: Initialize with all documents from local storage.

  // STEP 3: Create a new document if there are none.

  // STEP 3: Select the first document in the list of documents.
}
