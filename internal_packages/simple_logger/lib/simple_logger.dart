import 'package:cli_util/cli_logging.dart';

class SimpleLogger {
  static var _instance = Logger.standard();

  static void setVerbose(bool verbose) {
    _instance = verbose ? Logger.verbose() : Logger.standard();
  }

  static Progress progress(String message) {
    return _instance.progress(message);
  }

  static void info(String message) {
    return _instance.stdout('[INFO] $message');
  }

  static void error(String message) {
    return _instance.stderr('[ERROR] $message');
  }
}
