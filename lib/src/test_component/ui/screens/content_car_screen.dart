import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:MinkaiProject/bloc/app_bloc.dart';

class ContentRoute extends StatelessWidget {
  final String url;
  final String name;

  final String contenido;
  const ContentRoute(
      {Key? key,
      required this.name,
      required this.contenido,
      required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 80.0),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Container(
            height: 400.0,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(image: NetworkImage(url))),
          ),
          Container(
            child: Text(
              contenido,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          Container(
            child: MaterialButton(
              color: Colors.grey,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
          )
        ],
      ),
    );
  }
}
      








        

/*Scaffold(
      appBar: AppBar(
        title: Text("Description Car"),
      ),
      body: Container(
        /*
        child: MaterialButton(
          color: Colors.grey,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ), */

        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(url))),
            ),
            Center(
              child: MaterialButton(
                color: Colors.grey,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
            )
          ],
        ),
      ),
    );
  */

