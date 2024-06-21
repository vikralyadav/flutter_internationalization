import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translationappgetx/messages.dart';
import 'package:translationappgetx/mycontroller.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  
  MyController  myController= Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      title: 'Internationalization',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Internationalization"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('hello'.tr, style: TextStyle(fontSize: 25, color: Colors.red),),
              TextButton(onPressed: (){
                myController.changeLanguage('hi', 'IN');

              }, child: Text("Hindi")
              ),
              SizedBox(height: 16,),
              TextButton(onPressed: (){
                myController.changeLanguage('fr', 'FR');

              }, child: Text("French")
              ),
                SizedBox(height: 16,),
              TextButton(onPressed: (){
                myController.changeLanguage('en', 'US');

              }, child: Text("English")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
