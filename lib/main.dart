
import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fcm_project/firebase_options.dart';
import 'package:flutter_fcm_project/notificationServices.dart';
import 'package:flutter_fcm_project/serverKey.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:http/http.dart' as http;


String? devToken;
Future bg_notification(RemoteMessage message)async{
  if(message.notification!=null){
    print("message received in background");
  }
}

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
   WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
   devToken=await FirebaseMessaging.instance.getToken();
  print("Device Token: $devToken");
  FirebaseMessaging.onBackgroundMessage(bg_notification);
  NotificationServices.requestNotificationPermission();
  NotificationServices.localNotiInit();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Firebase Push Notification',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
    
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message){
        print(message);
         String payloadData = jsonEncode(message.data);
          if (message.notification != null) {
        NotificationServices.showSimpleNotification(
            title: message.notification!.title!,
            body: message.notification!.body!,
            payload: payloadData);
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message){
      print(message);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FCM Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: ()async{
            // final get=get_server_key();
            // String serverToken=await get.server_token();
            // print("Server Key: $serverToken");

             await http.post(
                    Uri.parse(
                        'https://fcm.googleapis.com/v1/projects/fcm-project-23861/messages:send'),
                    headers: <String, String>{
                       'Content-Type': 'application/json',
                       'Authorization': 'Bearer $serverToken',
                    },
                    body: jsonEncode(<String, dynamic>{
                      "message": {
                        "token":devToken ,
                        "notification": {
                          "body": 'This is the push notification',
                          "title": 'Push Notification',
                        },
                        // "data": {"story_id": "story_12345"}
                      }
                    }),
                  );
          },
          child: Text('Get Server Key'),
        ),
      ),
    );
  }
}