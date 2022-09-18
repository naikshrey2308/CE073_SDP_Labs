import 'dart:async';
import "dart:isolate";
import 'package:lab6_tutorial1/lab6_tutorial1.dart' as lab6_tutorial1;
import "dart:convert";
import "dart:io";
import "package:http/http.dart" as http;

class Todo {
	Todo({
		required this.userId,
		required this.id,
		required this.title,
		required this.completed,
	});
	factory Todo.fromJson(Map<String, Object?> jsonMap) {
		return Todo(
			userId: jsonMap['userId'] as int,
			id: jsonMap['id'] as int,
			title: jsonMap['title'] as String,
			completed: jsonMap['completed'] as bool,
		);
	}
	final int userId;
	final int id;
	final String title;
	final bool completed;
	@override
	String toString() {
		return (
			"""
			userId: $userId
			id: $id
			title: $title
			completed: $completed
			"""
		);
	}
}

Future<void> main(List<String> arguments) async {
  /*
  /// ASYNCHRONOUS PROGRAMMING IN DART
  
	/// Futures in dart are similar to promises in JavaScript.
	/// Futures are generic.
	/// When the intergers are too large to fit in the int data type, we can use the BigInt data type.
	/// Future can be in one of the following states:
	/// 	- uncompleted
	/// 	- completed with a value
	/// 	- completed with an error
  
  	final myFuture = Future<String>.delayed(
		Duration(seconds: 1),
		() => "Hello"
  	);

	/// Instance of Future<String>
	/// Because this is a Future(Promise) that will give us a result or error as soon as possible, and not the actual function to execute
	print(myFuture);

	/// A 'callback' is an anonymous function that will run after some event has completed.
	/// Futures have 3 callback opportunities:
	/// 	- then
	/// 	- catchError
	/// 	- whenComplete
	print("\nBefore future executes...");
	final f1 = Future<double>.delayed(
		Duration(seconds: 0),
		() => 500.00
	)
	.then((value) => print("Value: $value"))
	.catchError((error) => print("Error: $error"))
	.whenComplete(() => print("Future complete!"));
	print("After future has executed...");

	/// async-await
	print("\nBefore future executes...");
	final dVal = await Future<double>.delayed(
		Duration(seconds: 1),
		() => 600.00
	);
	print("Value: $dVal");
	print("After future has executed...\n");

	/// Everything after the await keyword is sent to the event queue. What if the Future encounters an error? For that, we have the try-catch block.
	print("\n\n");
	print("Try-Catch example...");
	print("Before the future executes...");
	try {
		final iVal = await Future<int>.delayed(
			Duration(seconds: 2),
			() => 800,
		);
		// throw Exception("There was an error");
		print("iVal Value: $iVal");
	} catch(error) {
		print(error);
	} finally {
		print("Future is complete");
	}
	print("After the future has executed...");


	/// REST - Representational State Transfer
	/// HTTP - Hyper Text Transfer Protocol
	/// API - Application Programming Interface
	

	/// GET request with dart
	try {
		final url = "https://jsonplaceholder.typicode.com/todos/1";
		final parsedUrl = Uri.parse(url);
		final response = await http.get(parsedUrl);
		final statusCode = response.statusCode;
		if(statusCode == 200) {
			final rawJson = response.body;
			final jsonMap = jsonDecode(rawJson);
			final todo = Todo.fromJson(jsonMap);
			print(todo);
		} else {
			throw Exception("$statusCode");
		}
	}
	on SocketException catch(error) {
		print(error);
	}
	on HttpException catch(error) {
		print(error);
	}
	on FormatException catch(error) {
		print(error);
	}
	// catch all the other generic errors
	catch(error) {
		print(error);
	}



	/// STREAMS IN DART
	
	final file = File("assets/text.txt");
	final contents = await file.readAsString();
	// print(contents);

	final file2 = File("assets/text_long.txt");
	final stream = file2.openRead();
	stream.listen(
		(data) => {
			print(data.length)
		},
		onError: (error) {
			print(error);
		},
		cancelOnError: true,
		onDone: () {
			print("Completed!");
		},
	);

	/// same as:
	// try {
	// 	await for(var data in stream) {
	// 		print(data.length);
	// 	}
	// }
	// on Exception catch(error) {
	// 	print(error);
	// }
	// finally {
	// 	print("Done!");
	// }

	final file3 = File("assets/text.txt");
	final stream2 = file3.openRead();
	// StreamSubscription<List<int>>? sub = stream2.listen((data) => {
	// 	print(data)
	// });

	// similar to:
	await for(var data in stream2.transform(utf8.decoder)) {
		print(data);
	}

*/

	/// ISOLATES
	/// 
	
	final receivePort = ReceivePort();
	final isolate = await Isolate.spawn(
		playHideAndSeek,
		receivePort.sendPort
	);
	receivePort.listen((message) {
		print(message);
		receivePort.close();
		isolate.kill();
	});

	print("Hello");
}

void playHideAndSeek(SendPort sendPort) {
	var counting = 0;
	for(var i=1; i < 1000000000; i++) {
		counting = i;
	}
	sendPort.send(counting);
}