import "package:flutter/material.dart";
import 'package:lab9/quote.dart';

class quoteTemplate extends StatelessWidget {
  quoteTemplate({required this.quote, required this.delete});

  final Quote quote;

  final VoidCallback delete;

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(quote.text,
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 8.0),
              Text(" - " + quote.author,
                textAlign: TextAlign.end,
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: delete,
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white70,
                ),
                child: Text("Delete Quote"),
              )
            ]
        ),
      ),
    );
  }
}
