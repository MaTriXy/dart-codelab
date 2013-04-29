#!/usr/bin/env dart

import 'package:web_ui/component_build.dart';
import 'dart:io';

void main() {
  build(new Options().arguments, ['web/index.html'])
    .then((results) {
      print('Running dart2js on web_ui output...');
      return Process.run('dart2js', [
        results.first.bootstrapFile,
      ]);
    })
    .then((_) => print('Build finished!'));
}
