#!/usr/bin/env dart

import 'package:web_ui/component_build.dart';
import 'dart:io';
import 'dart:async';

void main() {
  var args = new List.from(new Options().arguments);
  build(args, ['web/index.html'])
//    .then((_) => _runDart2js('web/out/index.html_bootstrap.dart'))
    .then((_) => print('Build finished!'));
}

Future<ProcessResult> _runDart2js(String file) {
  if (new File(file).existsSync()) {
    print('Running dart2js on ${file}...');
    return Process.run('dart2js', [file, '--out=${file}.js']);
  }
}