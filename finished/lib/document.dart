library document;

import 'dart:json' as JSON;
import 'dart:math' show Random;

import 'package:web_ui/web_ui.dart';



/**
 * A text file.
 *
 * The document keeps track of its creation and modification time.
 */
@observable
class Document {

  String _title;
  String _content;

  DateTime created;
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

  /**
   *  Number of words in the document.
   *
   *  A "word" is a string of characters separated by a space or a newline.
   */
  String get wordCount {
    int count = new RegExp(r"(\w|\')+").allMatches(_content).length;
    if (count == 1) {
      return '$count word';
    }
    return '$count words';
  }


  // These setters and getters are used to update the modification time.

  set title(String title) {
    _title = title;
    modified = new DateTime.now();
  }

  String get title => _title;

  set content(String content) {
    _content = content;
    modified = new DateTime.now();
  }

  String get content => _content;
}
