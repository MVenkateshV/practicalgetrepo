
import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart'as client;
import '../models/data_model.dart';

class NetworkController extends GetxController{
  List<Autogenerated>dataList=[];
  bool isLoading=false;
  getData()async{
    isLoading=true;
    update();
    client.Response data=
    await client.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
   dataList= (jsonDecode(data.body) as List).map((e)=>Autogenerated.fromJson(e)).toList();
   isLoading=false;
   update();
  }
  }
