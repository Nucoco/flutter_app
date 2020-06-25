import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('flutter'),
          ),
          body: Consumer<MainModel>(
              builder: (context, model, child) {
              return Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      model.KboyText,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    RaisedButton(
                      child: Text(
                        'botton',
                      ),
                      onPressed: (){
                        model.changeKboyText();
                      },
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
