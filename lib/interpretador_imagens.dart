import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ServerCommunication {
  static const String baseUrl = 'http://127.0.0.1:5000';
  static const String apiEndpoint = '/interpretar-falar-texto';

  static Future<void> extrairEFalarTexto(String imagePath) async {
    String apiUrl = '$baseUrl$apiEndpoint';

    try {
      var response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(<String, String>{'caminho_imagem': imagePath}),
      );

      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        if (responseData['success']) {
          print("Texto extraído e falado com sucesso.");
          
        } else {
          print("Erro: ${responseData['message']}");
      
        }
      } else {
        print("Erro na requisição: ${response.statusCode}");
    
      }
    } catch (e) {
      print("Erro na conexão: $e");
  
    }
  }
}
