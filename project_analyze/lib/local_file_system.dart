import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:path/path.dart' as p;

/// A wrapper around the LocalFileSystem from package:file
/// This class provides a convenient way to use the file package's LocalFileSystem
/// implementation with custom working directory support.
class WorkingDirectoryFileSystem implements FileSystem {
  String _workingDir;
  final FileSystem _fs = LocalFileSystem();

  /// Creates a new LocalFileSystem with an optional working directory.
  /// If not provided, the current directory is used.
  WorkingDirectoryFileSystem(String workingDir) : _workingDir = p.absolute(workingDir);

  String _resolvePath(String path) =>
      p.isAbsolute(path) ? path : p.canonicalize(p.join(_workingDir, path));

  @override
  File file(dynamic path) => _fs.file(_resolvePath(path.toString()));

  @override
  Directory directory(dynamic path) => _fs.directory(_resolvePath(path.toString()));

  @override
  Link link(dynamic path) => _fs.link(_resolvePath(path.toString()));

  @override
  Future<FileSystemEntityType> type(dynamic path, {bool followLinks = true}) {
    if (path == null) return Future.value(FileSystemEntityType.notFound);
    return _fs.type(_resolvePath(path.toString()), followLinks: followLinks);
  }

  @override
  Directory get currentDirectory => _fs.directory(_workingDir);

  @override
  set currentDirectory(dynamic path) {
    // This is a custom implementation since we're managing our own working directory
    _workingDir = path is String ? _resolvePath(path) : _resolvePath(path.toString());
  }

  @override
  Future<bool> isDirectory(dynamic path) async {
    if (path == null) return false;
    return (await _fs.type(_resolvePath(path.toString()))) == FileSystemEntityType.directory;
  }

  @override
  Future<bool> isFile(dynamic path) async {
    if (path == null) return false;
    return (await _fs.type(_resolvePath(path.toString()))) == FileSystemEntityType.file;
  }

  @override
  Future<bool> isLink(dynamic path) async {
    if (path == null) return false;
    return (await _fs.type(_resolvePath(path.toString()), followLinks: false)) ==
        FileSystemEntityType.link;
  }

  @override
  p.Context get path => _fs.path;

  @override
  Future<bool> identical(dynamic path1, dynamic path2) =>
      _fs.identical(_resolvePath(path1.toString()), _resolvePath(path2.toString()));

  @override
  bool identicalSync(dynamic path1, dynamic path2) =>
      _fs.identicalSync(_resolvePath(path1.toString()), _resolvePath(path2.toString()));

  @override
  bool isDirectorySync(dynamic path) {
    if (path == null) return false;
    return _fs.typeSync(_resolvePath(path.toString())) == FileSystemEntityType.directory;
  }

  @override
  bool isFileSync(dynamic path) {
    if (path == null) return false;
    return _fs.typeSync(_resolvePath(path.toString())) == FileSystemEntityType.file;
  }

  @override
  bool isLinkSync(dynamic path) {
    if (path == null) return false;
    return _fs.typeSync(_resolvePath(path.toString()), followLinks: false) ==
        FileSystemEntityType.link;
  }

  @override
  FileSystemEntityType typeSync(dynamic path, {bool followLinks = true}) {
    if (path == null) return FileSystemEntityType.notFound;
    return _fs.typeSync(_resolvePath(path.toString()), followLinks: followLinks);
  }

  @override
  String getPath(dynamic uri) => _fs.getPath(uri);

  @override
  bool get isWatchSupported => _fs.isWatchSupported;

  @override
  Future<FileStat> stat(dynamic path) => _fs.stat(_resolvePath(path.toString()));

  @override
  FileStat statSync(dynamic path) => _fs.statSync(_resolvePath(path.toString()));

  @override
  Directory get systemTempDirectory => _fs.systemTempDirectory;
}
