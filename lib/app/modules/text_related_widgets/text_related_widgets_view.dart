import 'package:flutter/material.dart';
import 'package:flutter_widgets/app/modules/text_related_widgets/text_related_widgets_controller.dart';
import 'package:get/get.dart';

class TextRelatedWidgetsView extends GetView<TextRelatedWidgetsController> {
  const TextRelatedWidgetsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text Related widgets',
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
                style: Theme.of(context).textTheme.bodyMedium,
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
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 20,
              ),
              // UN SELECTABLE TEXT
              Text(
                '2: Un selectable Text',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Success is not final, failure is not fatal. It is the courage to continue that counts.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 20,
              ),
              // RICH TEXT
              Text(
                '3: Rich Text ',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  text: 'Hello, ',
                  style: Theme.of(context).textTheme.bodySmall,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'italic word ',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                    TextSpan(
                      text: ' bold word!',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontStyle: FontStyle.italic,
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
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 5,
              ),

              SelectableText.rich(
                style: Theme.of(context).textTheme.bodySmall,
                TextSpan(
                  text: 'Hello, ',
                  children: [
                    TextSpan(
                      text: '\nred word ',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.red,
                          ),
                    ),
                    TextSpan(
                      text: '\nblue word ',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.blue,
                          ),
                    ),
                    TextSpan(
                      text: '\ngreen word ',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.green,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // SELECTABLE TEXT WITH SELECTION AREA
              Text(
                '5: Selectable and Un selectable text',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 5,
              ),
              SelectionArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selectable text with in Selection area.',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SelectionContainer.disabled(
                      child: Text(
                        'Not Selectable text with in Selection area.',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
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
