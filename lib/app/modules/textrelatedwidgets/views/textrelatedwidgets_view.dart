import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/textrelatedwidgets_controller.dart';

class TextrelatedwidgetsView extends GetView<TextrelatedwidgetsController> {
  const TextrelatedwidgetsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text Related widgets',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SELECTABLE TEXT
              SelectableText(
                '1: Selectable Text',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SelectableText(
                showCursor: true,
                cursorWidth: 2,
                cursorRadius: Radius.circular(5),
                cursorColor: Colors.red,
                'Success is not final, failure is not fatal. It is the courage to continue that counts.',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // UN SELECTABLE TEXT
              Text(
                '2: Unselectable Text',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Success is not final, failure is not fatal. It is the courage to continue that counts.',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // RICH TEXT
              Text(
                '3: Rich Text ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  text: 'Hello, ',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'italic word ',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: ' bold word!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // SELECTABLE RICH TEXT
              Text(
                '4: Selectable Rich Text ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),

              SelectableText.rich(
                style: TextStyle(
                  fontSize: 14,
                ),
                TextSpan(
                  text: 'Hello, ',
                  children: const [
                    TextSpan(
                      text: '\nred word ',
                      style: TextStyle(color: Colors.red),
                    ),
                    TextSpan(
                      text: '\nblue word ',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text: '\ngreen word ',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // SELECTABLE TEXT WITH SELECTION AREA
              Text(
                '5: Selectable and Unselectable text',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SelectionArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Selectable text with in Selection area.'),
                    SelectionContainer.disabled(
                      child:
                          Text('Not Selectable text with in Selection area. '),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
