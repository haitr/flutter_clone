import 'dart:io';

import 'package:glob/glob.dart';
import 'package:path/path.dart' as path;

/// Utility function to recursively copy a directory.
///
/// Preserves the directory structure and handles files, directories and symlinks.
///
/// @param from Source directory path
/// @param to Destination directory path
Future<void> copyPath(
  String from,
  String to, {
  List<String> includes = const ['**/*'],
  List<String>? excludes,
}) async {
  await Directory(to).create(recursive: true);
  await for (final file in Directory(from).list(recursive: true)) {
    final relativePath = path.relative(file.path, from: from);

    var shouldCopy = false;
    // Check if the file should be included based on includes patterns
    final globIncludes = includes.map((e) => Glob(e)).toList();
    for (final glob in globIncludes) {
      if (glob.matches(relativePath)) {
        shouldCopy = true;
        break;
      }
    }

    // Check if the file should be ignored based on the patterns
    final globExcludes = excludes?.map((e) => Glob(e)).toList() ?? [];
    for (final glob in globExcludes) {
      if (glob.matches(relativePath)) {
        shouldCopy = false;
        break;
      }
    }

    if (!shouldCopy) {
      continue;
    }

    final copyTo = path.join(to, relativePath);
    if (file is Directory) {
      await Directory(copyTo).create(recursive: true);
    } else if (file is File) {
      // Create parent directory before copying file
      final parent = path.dirname(copyTo);
      await Directory(parent).create(recursive: true);
      await File(file.path).copy(copyTo);
    } else if (file is Link) {
      // Create parent directory before creating link
      final parent = path.dirname(copyTo);
      await Directory(parent).create(recursive: true);
      await Link(copyTo).create(await file.target(), recursive: true);
    }
  }
}
