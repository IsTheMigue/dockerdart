//Paquete para convertir String en json
import 'dart:io';
import 'dart:async';
import 'dart:convert';
void main() async{
  
  //Decodificamos los datos
  // Map<String, dynamic> datos = jsonDecode( await Api());
  // print(datos);
  Uri apiUrl = Uri.parse("https://my-json-server.typicode.com/IsTheMigue/Api/db");
    HttpClientRequest request = await new HttpClient().getUrl(apiUrl);
    HttpClientResponse response = await request.close();

    Stream resStream = response.transform(Utf8Decoder());

    await for (var data in resStream) {
      print(data);
    }
}
