import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Input Text',
      home: NamanCustomForm(),
    );
  }
}

class NamanCustomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NamanCustomFormState();
  }

}

class NamanCustomFormState extends State<NamanCustomForm>{
//Create a text controller and use it to retrieve the current value of the text field.
  final namanController = TextEditingController();


  @override
  void dispose() {            // cleans the controller
    namanController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          controller: namanController,
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          return showDialog(context: context,
          builder: (context){
            return AlertDialog(
              content: Text(namanController.text),
            );
          });
        },
        tooltip: 'Show me the value',
        child: Icon(Icons.text_fields),
      ),
    );
  }
}
