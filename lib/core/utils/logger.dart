import 'package:logger/logger.dart';

class LoggerUtils {
  static final Logger _logger = Logger();

  static void debug(String message) {
    _logger.d(message);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void warn(String message) {
    _logger.w(message);
  }

  static void error(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e('$message, $error, $stackTrace');
  }
}
