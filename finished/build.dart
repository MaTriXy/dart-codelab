#!/usr/bin/env dart

import 'package:web_ui/component_build.dart';
import 'dart:io';

void main() {
  build(new Options().arguments, ['web/index.html'])
    .then((Iterable results) {
      print('Running dart2js on web_ui output...');
      if (!results.isEmpty &&
          new File(results.first.bootstrapFile).existsSync()) {
        return Process.run('dart2js', [
          results.first.bootstrapFile,
          '--out=${results.first.bootstrapFile}.js'
        ]);
      }
    })
    .then((_) => print('Build finished!'));
}
