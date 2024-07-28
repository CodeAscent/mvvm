import 'package:intl/intl.dart';



class Helpers {


  static bool isNullOrEmpty(String? text) {
    return text == null || text.isEmpty;
  }

  static double calculatePercentage(int value, int total) {
    return (value / total) * 100;
  }

  static String formatDate({required String date, required String fromat}) {
  return DateFormat(fromat).format(DateTime.parse(date));
}
}
