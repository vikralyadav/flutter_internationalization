import 'dart:ui';
import 'package:get/get.dart';


class MyController extends GetxController{
void changeLanguage (var paraml, var param2)
{
var locale = Locale (paraml, param2); 
Get.updateLocale(locale);
}
}