import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:localstorage/localstorage.dart';
import 'package:no_screenshot/no_screenshot.dart';
import 'package:provider/provider.dart';
// import 'package:sportboo_mobile_client/core/services/notification_service.dart';
import 'package:sportboo_mobile_client/unils/utils.dart';

import 'core/providers/providers_list.dart';
import 'core/services/notification_controller.dart';
import 'core/theme/theme.dart';
import 'firebase_options.dart';
import 'modules/authentication/login/login_view.dart';
// import 'modules/profile/sub_screens/settings/sub_screen/security/security_viewmodel.dart';

Future<void> backgroundHandler(RemoteMessage msg) async {
  if (kDebugMode) {
    print("background fcm data  : ${msg.data}");
  }
  // re-init in case App was kill
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocalStorage();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // NotificationService.initAwesomeNotification();
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // NotificationService().setupFcmMessagingEvent();
    AwesomeNotifications().setListeners(
        onActionReceivedMethod: NotificationController.onActionReceivedMethod,
        onNotificationCreatedMethod:
            NotificationController.onNotificationCreatedMethod,
        onNotificationDisplayedMethod:
            NotificationController.onNotificationDisplayedMethod,
        onDismissActionReceivedMethod:
            NotificationController.onDismissActionReceivedMethod);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));

    return MultiProvider(
      providers: ProvidersList.getProviders(),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'SportBoo',
            theme: appLightTheme,
            home: const LoginView(),
            navigatorKey: MyApp.navigatorKey,
            builder: FlutterSmartDialog.init(),
          );
        },
      ),
    );
  }
}
