
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../model/sample_data_response.dart';


class ApiCall{


  Future<List<SampleData>?> fetchData() async {
    List<SampleData> testList =[];
    try {

      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      var data = jsonDecode(response.body.toString());
      if (response.statusCode == 200) {
        for(var val in data ){
          testList.add(SampleData.fromJson(val));
        }
        return testList;
      } else {
        return testList=[];
      }
    }catch(e){
      print("fetch ListData Error $e"
      );
    }
    return null;
  }


}