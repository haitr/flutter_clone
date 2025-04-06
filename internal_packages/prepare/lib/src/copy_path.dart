import 'package:file_system/file_system.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as path;

/// Utility function to recursively copy a directory.
///
/// Preserves the directory structure and handles files, directories and symlinks.
///
/// @param from Source directory
/// @param to Destination directory
Future<void> copyPath(
  Directory from,
  Directory to, {
  List<String> includes = const ['**/*'],
  List<String>? excludes,
}) async {
  await to.create(recursive: true);
  await for (final file in from.list(recursive: true)) {
    final relativePath = path.relative(file.path, from: from.path);

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

    final copyTo = to.fileSystem.file(path.join(to.path, relativePath));
    if (file is Directory) {
      await copyTo.parent.create(recursive: true);
    } else if (file is File) {
      // Create parent directory before copying file
      await copyTo.parent.create(recursive: true);
      await file.copy(copyTo.path);
    } else if (file is Link) {
      // Create parent directory before creating link
      await copyTo.parent.create(recursive: true);
      await copyTo.fileSystem.link(copyTo.path).create(await file.target(), recursive: true);
    }
  }
}
