/**
 * A library for the document object.
 */
library document;

import 'dart:json' as JSON;
import 'dart:math' show Random;

import 'package:intl/intl.dart';

/// STEP 1: Import the Web UI package.

/**
 * A file of plain text.
 *
 * The document keeps track of its creation and modification time.
 */

/// STEP 1: Mark the class with @observable.
class Document {

  String _title;
  String _content;

  /// Creation time.
  DateTime created;

  /// Last modification time.
  DateTime modified;

  /// The unique identifier is `document-` followed by a large random number.
  String id;

  /// Create a new document.
  Document(this._title, this._content) {
    var random = new Random();
    id = 'document-${random.nextInt(1000000)}';
    created = new DateTime.now();
    modified = new DateTime.now();
  }

  /// Re-creates the document from serialized JSON.
  Document.fromJson(json) {
    var data = JSON.parse(json);
    id = data['id'];
    _title = data['title'];
    _content = data['content'];
    created = DateTime.parse(data['created']);
    modified = DateTime.parse(data['modified']);
  }

  // Serialize this object into a JSON string.
  String toJson() {
    var data = {
      'id': id,
      'title': _title,
      'content': _content,
      'created': created.toString(),
      'modified': modified.toString()
    };
    return JSON.stringify(data);
  }

  /// STEP 1: Add wordcount method.


  // These setters and getters are used to update the modification time.

  /// The title of our document.
  set title(String title) {
    _title = title;
    modified = new DateTime.now();
  }
  String get title => _title;

  /// The next best-seller, maybe?
  set content(String content) {
    _content = content;
    modified = new DateTime.now();
  }
  String get content => _content;
}

/**
 * Formatting for document dates.
 *
 * Parsed time looks like: 'April 29, 9:48 AM'
 */
DateFormat dateFormat = new DateFormat.MMMMd().addPattern('',', ').add_jm();
