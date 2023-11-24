// import 'dart:io';
// import 'package:dart_openai/dart_openai.dart';
// import 'package:trotter/trotter.dart'; // Import trotter for the progress bar

// Future<String> read_file_to_variable(String filePath) async {
//   // Get the size of the file for progress bar
//   var file = File(filePath);
//   var fileLength = await file.length();

//   // Read the content from the file
//   var fileContent = await file.readAsString();
//   return fileContent;
// }

// Future<Map<String, String>> read_files_in_folder(String folderPath) async {
//   var fileContents = <String, String>{};

//   // Iterate through all files in the folder
//   await for (var entity in Directory(folderPath).list()) {
//     if (entity is File) {
//       var fileContent = await read_file_to_variable(entity.path);
//       fileContents[entity.path] = fileContent;
//     }
//   }

//   return fileContents;
// }

// void main() async {
//   // Example usage with a folder path
//   var folderPath = "assets/files/Job Descriptions.txt";

//   // Read content from all files in the folder
//   var fileContents = await read_files_in_folder(folderPath);

//   // Print the content of each file (for demonstration purposes)
//   // fileContents.forEach((file, content) {
//   //   print("Content of file $file:\n$content");
//   // });
//   client = OpenAI; // Create a new OpenAI client
//   OpenAI(
//     apiKey: "b8e6ac2cfda244dd848a823511255a0b",
//     endpoint: "https://hackathonservice.openai.azure.com/",
//     apiVersion: "2023-05-15",
//   );

//   // Example usage with a folder path and different variables for each file
//   var responses = <String, String>{};

//   // Iterate through each file content and interact with the OpenAI chatbot
//   for (var entry in fileContents.entries) {
//     var file = entry.key;
//     var content = entry.value;
//     var response = await OpenAI.instance.completion.create(
//       model: "gpt-35-turbo",
//       prompt: [
//         {
//           "role": "system",
//           "content": "You take text files and give a one sentence summary"
//         },
//         {"role": "user", "content": "Read this file and summarise it $content"},
//         {"role": "assistant", "content": "Send the summary for file $file"},
//       ],
//     );
//     responses[file] = response.choices[0].text;
//     // responses[file] = response.choices[0].message.content;
//   }

//   // Print the content generated by the OpenAI chatbot for each file
//   responses.forEach((file, responseContent) {
//     print("Response from chatbot for file $file:\n$responseContent");
//   });
// }
