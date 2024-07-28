import 'package:localstorage/localstorage.dart';

import 'local_storage.dart';

class AppConstants {
  AppConstants._();

  static String accessToken = "";
  static String fcmToken = "";

  static String capitalizeFirstLetterOfEachWord(String text) {
    return text.split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1);
    }).join(' ');
  }
}

const String baseUrl = 'https://sportboo-server.onrender.com/api/v1';
const String twitter = "https://twitter.com/Sportbooapp";
const String facebook = "https://www.facebook.com/profile.php?id=61550240214576";
const String instagram = "https://www.instagram.com/sportbooapp";
const String linkedLn = " https://www.linkedin.com/company/sportboo";
const String telegram = "https://t.me/sportbooapp";
const String sportbooWebSite = "https://sportboo.netlify.app";


final  token = localStorage.getItem(MyStorage.jwt);

// Notification Settings
const groupKey = 'SportBoo App';
const channelKey = 'SportBoo Channel';
const channelName = 'SportBoo';
const description = 'SportBoo Notification Channel';

