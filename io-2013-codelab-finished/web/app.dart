@observable
library writer;

import 'dart:async';
import 'dart:html' hide Document;

import 'package:web_ui/web_ui.dart';

import 'package:writer/document.dart';

// STEP 4: Import search.dart.
import 'package:writer/search.dart';

// STEP 5: Import storage.dart.
import 'package:writer/storage.dart';

// STEP 3: Add an observed list of documents.
final List<Document> documents = toObservable([]);

/// The document currently being written.
Document activeDocument = new Document('Hello Codelab!',
    'Try typing in this document!');

/// Used to control which panel is displayed in the mobile mode.
bool contentActive = true;

String get sidebarClass => contentActive ? '' : 'active';

String get mainClass => contentActive ? 'active' : '';

// STEP 3: Create a new document.
void createDocument() {
  // Create a new document.
  var doc = new Document('Untitled', '');
  documents.add(doc);
  selectDocument(doc);
}

// STEP 3: Add code to delete a document
void deleteDocument(Document doc) {
  documents.remove(doc);

  // STEP 5: Also delete from local storage.
  removeDocument(doc);
}

// STEP 3: Add code to select a document.
/**
 * Select a document.
 *
 * If [doc] is not found, try to select [activeDocument], and if that's not
 * found, then select the last document. If there are no documents, select
 * nothing.
 *
 * If [markActive] is true, then open the editing window.
 */
void selectDocument(Document doc, {bool markActive: false, Event event}) {
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
  // STEP 5: Initialize with all documents from local storage.
  documents.addAll(fetchDocuments());

  // STEP 3: Create a new document if there are none.
  if (documents.isEmpty) createDocument();

  // STEP 3: Select the first document in the list of documents.
  selectDocument(documents.first);
}

/// STEP 6: Add some fancy mobile stuff!

int _startTime;

/// Listen for touch to start. Clicks will pass through.
touchStart(TouchEvent event, Document doc) {
  (event.currentTarget as Element).classes.add('touched');
  _startTime = event.timeStamp;
}

/// Listen for moves, which stop clicks.
touchMove(TouchEvent event) {
  event.preventDefault();
}

/// After waiting for a longpress, send a mail of the document.
touchEnd(TouchEvent event, Document doc) {
  (event.currentTarget as Element).classes.remove('touched');
  if (event.timeStamp > _startTime + 700) {
    event.preventDefault();
    window.location.href = 'mailto:?to=&subject=Document: ${doc.title}'
        '&body=${doc.content}%0D%0A%0D%0A%0D%0AThis e-mail was written with The Dart Web Writer!'
        '%0D%0A'
        '%0D%0AThanks for trying out the codelab!'
        '%0D%0Awww.dartlang.org';
  }
}

/// Simply stop the event wholesale.
void touchCancel(TouchEvent event) {
  event.preventDefault();
}
