import 'dart:mirrors';

/// Extension on DeclarationMirror to extract the simple name
extension DeclarationMirrorExt on DeclarationMirror {
  /// Returns the simple name of the declaration as a string
  String get name => MirrorSystem.getName(simpleName);
}

/// Extension on ClassMirror to get the true superclass, skipping mixins
extension ClassMirrorExt on ClassMirror {
  /// Returns the true superclass, skipping over mixin applications
  /// which typically contain a '&' in their name
  ClassMirror? get trueSuperclass {
    if (superclass != null && superclass!.name.contains('&')) {
      return superclass?.superclass;
    }
    return superclass;
  }
}

/// Extension on Iterable of DeclarationMirror to filter and cast to List of ClassMirror
extension ListClassMirrorExt<T> on Iterable<DeclarationMirror> {
  /// Filters the iterable to only include ClassMirror instances and returns them as a list
  List<ClassMirror> get classDeclarations => whereType<ClassMirror>().cast<ClassMirror>().toList();
}
