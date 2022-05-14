import 'package:intl/intl.dart';


class Api {
  static var uri = Uri(host: "https://");

  static String formattedDateNow() {
    var now = DateTime.now();
    var formatter = DateFormat("yyyy-MM-dd");
    String formattedDate = formatter.format(now);
    return formattedDate; // 2016-01-25
  }
  
}