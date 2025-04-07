import 'dart:convert';
import 'dart:io' as io;

Future<String?> getFlutterVersion() async {
  try {
    // We'll use dart:io's Process to run a single command that works across platforms
    // The command prints the Flutter SDK path
    const flutterCommand = 'flutter';
    const args = ['--version', '--machine'];

    // Try to run the command (should work if flutter is in PATH)
    final result = await io.Process.run(flutterCommand, args, runInShell: true);

    if (result.exitCode == 0) {
      // Parse the JSON output
      final Map<String, dynamic> versionInfo = jsonDecode(result.stdout.toString());
      if (versionInfo.containsKey('flutterVersion')) {
        return versionInfo['flutterVersion'];
      }
    }
  } catch (e) {
    // Command failed or flutter not in PATH
    print(e.toString());
  }

  throw Exception(
    'Could not determine Flutter version. Ensure Flutter is installed and in your PATH.',
  );
}
