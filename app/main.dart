//Paquete para convertir String en json
import 'dart:io';
import 'dart:async';
import 'dart:convert';
void main() {
  
  
  HttpServer.bind("localhost", 8080).then((HttpServer server) {
    server.listen((HttpRequest requestlisten) async {
      Uri apiUrl = Uri.parse("https://my-json-server.typicode.com/IsTheMigue/Api/db");
      HttpClientRequest request = await new HttpClient().getUrl(apiUrl);
      HttpClientResponse response = await request.close();

      Stream resStream = response.transform(Utf8Decoder());

      await for (var data in resStream) {
        requestlisten.response.write(data);
      }
      requestlisten.response.close();
    });
  });
  
}


