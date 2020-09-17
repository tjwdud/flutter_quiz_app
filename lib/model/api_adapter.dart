import 'dart:convert';
import 'model_quiz.dart';

//함수 선언 리스트 리턴 
List<Quiz> parseQuizs(String responseBody){
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Quiz>((json) => Quiz.fromJson(json)).toList();

}

//api adapter 완성
//HomeScreen에서 api데이터를 가지고 오면 된다 