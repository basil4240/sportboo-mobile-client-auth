import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

extension MyDateExtension on DateTime {
  DateTime getDateOnly(){
    return DateTime(year, month, day);
  }
  DateTime getTimeOnly(){
    return DateTime(hour,minute,second,millisecond);
  }

  String jsTimeStamp(){
    DateTime dateTime = DateTime.now();
    // Format the DateTime object into the desired string format
    String formattedDateTime = DateFormat("yyyy-MM-ddTHH:mm:ss.SSS'Z'").format(dateTime);
    // Output the formatted timestamp
    if (kDebugMode) {
      print("formatted date time is $formattedDateTime");
    }
    return formattedDateTime;
  }
}