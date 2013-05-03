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
  // STEP 5: Initialize with all documents from local storage.
  documents.addAll(fetchDocuments());

  // STEP 3: Create a new document if there are none.
  if (documents.isEmpty) createDocument();

  // STEP 3: Select the first document in the list of documents.
  selectDocument(documents.first);
}

Rect _originalRect = null;
Element _sidebarItem = null;
Timer _timer = null;
bool _longpress = false;

void _reset() {
  if (_timer != null) _timer.cancel();

  var touched = queryAll('.touched');
  touched.forEach((e) => e.classes.remove('touched'));

  _sidebarItem = null;

  _originalRect = null;
  _longpress = false;
  _timer = null;
}

void touchStart(TouchEvent event, Element element, Document doc) {
  print('start');
  event.preventDefault();

  _sidebarItem = element.children.first;
  _originalRect = element.getBoundingClientRect();

  if (doc != activeDocument) selectDocument(doc, markActive: true);

  _timer = new Timer(new Duration(milliseconds: 50), () {
    _sidebarItem.classes.add('touched');

    if (_timer != null) {
      _timer = new Timer(new Duration(milliseconds: 700), () {
        if (_timer != null) _longpress = true;
      });
    } else {
      selectDocument(doc, markActive: true);
    }
  });
}

void touchEnd(TouchEvent event) {
  event.preventDefault();
  print('end');
  if (_longpress == true) {

    print('foo');
    //window.location.href = 'mailto:amouravski@google.com';
  }
  _reset();
}

bool _eventWithinElement(TouchEvent event) {
  return _originalRect != null && event.touches != null &&
      event.touches.length == 1 &&
      _originalRect.containsPoint(event.touches.single.client);
}

void touchMove(TouchEvent event) {
  print(_originalRect);
  event.preventDefault();
  if (!_eventWithinElement(event)) {
    _reset();
  }
}

void touchCancel(TouchEvent event) {
  event.preventDefault();
  _reset();
}
