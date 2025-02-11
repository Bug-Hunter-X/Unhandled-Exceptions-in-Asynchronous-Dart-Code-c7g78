```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // ... further processing ...
    } else {
      // Handle non-200 status codes explicitly
      print('Request failed with status: ${response.statusCode}.');
      //Example of  handling based on the error status
      //throw Exception('Failed to load data: ${response.statusCode}'); 
    }
  } catch (e) {
    // Handle exceptions during network requests
    print('An error occurred: $e');
    //Example: Instead of rethrowing, provide feedback to the user and potentially retry the operation.
    // ... handle the error appropriately (e.g., show an error message, retry the request, etc.) ...
  }
}

void main() async{
  try{
    await fetchData();
  }catch(e){
    print("Main function caught error: $e");
  }
}
```