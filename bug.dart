```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle the successful response
      final jsonData = jsonDecode(response.body);
      print(jsonData); 
    } else {
      // Handle the error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the API call
    print('Error: $e');
    // Here's where the bug is likely to manifest if not handled properly
    rethrow; // Re-throw the exception to be handled further up the call stack
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    print('An error occurred: $e'); //This is the top level error handling
  }
}
```