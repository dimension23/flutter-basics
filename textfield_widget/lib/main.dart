import 'package:flutter/material.dart';

void main() => runApp(TextFieldWidget());

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  String ptext = '';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('TextWidget'),
        ),
        body: new Column(
          children: <Widget>[
            new TextField(
              onSubmitted: (String txt) {
                setState((){
                  ptext = txt;
                });
              },
              decoration: new InputDecoration(hintText: 'Email Address', labelText: 'User Id'),
            ),
            new Padding(padding: const EdgeInsets.all(10.0)),
            new Text(ptext),
          ],
        ),
      ),
    );
  }
}
