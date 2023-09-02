import 'dart:developer';

import 'package:http/http.dart' as http;

import '../constants.dart';
import '../model/college_model.dart';

class ApiService {
  Future<List<CollegeModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<CollegeModel> _model = userModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
