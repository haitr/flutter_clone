import 'package:fs_shim/fs_shim.dart';
import 'package:path/path.dart';

class LocalFileSystem implements FileSystem {
  final FileSystem _fs = fileSystemIo;
  String _workingDir = Directory.current.path;

  LocalFileSystem({String? workingDir}) {
    _workingDir = path.absolute(workingDir ?? Directory.current.path);
  }

  void changeWorkingDirectory(String dir) {
    _workingDir = path.absolute(dir);
  }

  String _resolvePath(String p) {
    return path.isAbsolute(p) ? p : path.join(_workingDir, p);
  }

  @override
  File file(String path) => _fs.file(_resolvePath(path));

  @override
  Directory directory(String path) => _fs.directory(_resolvePath(path));

  @override
  Link link(String path) => _fs.link(_resolvePath(path));

  @override
  bool get supportsFileLink => _fs.supportsFileLink;

  @override
  bool get supportsLink => _fs.supportsLink;

  @override
  Future<FileSystemEntityType> type(String? path, {bool followLinks = true}) async {
    if (path == null) return FileSystemEntityType.notFound;
    return await _fs.type(_resolvePath(path), followLinks: followLinks);
  }

  @override
  Directory get currentDirectory => _fs.directory(_workingDir);

  @override
  Future<bool> isDirectory(String? path) async {
    if (path == null) return false;
    return (await _fs.type(_resolvePath(path))) == FileSystemEntityType.directory;
  }

  @override
  Future<bool> isFile(String? path) async {
    if (path == null) return false;
    return (await _fs.type(_resolvePath(path))) == FileSystemEntityType.file;
  }

  @override
  Future<bool> isLink(String? path) async {
    if (path == null) return false;
    return (await _fs.type(_resolvePath(path), followLinks: false)) == FileSystemEntityType.link;
  }

  @override
  String get name => 'local';

  @override
  Context get path => _fs.path;

  @override
  Context get pathContext => _fs.pathContext;

  @override
  bool get supportsRandomAccess => _fs.supportsRandomAccess;
}
