```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    //This is improved error handling, providing more context
    print('Error fetching data: $e'); 
    //Instead of rethrowing, we return null or a default value, preventing crashes
    return null; // Or return a default value
  }
}

void main() async {
  final data = await fetchData();
  if (data != null) {
    print('Data received: $data');
  } else {
    print('Failed to receive data. Check the network and API.');
  }
}
```