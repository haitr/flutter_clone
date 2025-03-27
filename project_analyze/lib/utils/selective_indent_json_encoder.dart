import 'dart:convert';

class SelectiveIndentJsonEncoder extends Converter<Object?, String> {
  final int thresholdLength;
  final String indent;

  SelectiveIndentJsonEncoder({this.thresholdLength = 80, this.indent = '  '});

  @override
  String convert(Object? object) {
    return _encode(object);
  }

  String _encode(Object? value, [String currentIndent = '']) {
    if (value == null) return 'null';

    if (value is Map) {
      if (value.isEmpty) return '{}';

      // First try compact version for this object
      String compact = JsonEncoder().convert(value);
      if (compact.length <= thresholdLength) {
        return compact;
      }

      // If too long, format with selective indentation
      var buffer = StringBuffer();
      buffer.write('{\n');
      String nextIndent = currentIndent + indent;

      var entries = value.entries.toList();
      for (var i = 0; i < entries.length; i++) {
        var entry = entries[i];
        buffer.write('$nextIndent"${entry.key}": ');
        buffer.write(_encode(entry.value, nextIndent));
        if (i < entries.length - 1) buffer.write(',');
        buffer.write('\n');
      }

      buffer.write('$currentIndent}');
      return buffer.toString();
    }

    if (value is List) {
      if (value.isEmpty) return '[]';

      // First try compact version for this array
      String compact = JsonEncoder().convert(value);
      if (compact.length <= thresholdLength) {
        return compact;
      }

      // If too long, format with selective indentation
      var buffer = StringBuffer();
      buffer.write('[\n');
      String nextIndent = currentIndent + indent;

      for (var i = 0; i < value.length; i++) {
        buffer.write(nextIndent);
        buffer.write(_encode(value[i], nextIndent));
        if (i < value.length - 1) buffer.write(',');
        buffer.write('\n');
      }

      buffer.write('$currentIndent]');
      return buffer.toString();
    }

    // For primitive values, use standard JSON encoding
    return JsonEncoder().convert(value);
  }
}
