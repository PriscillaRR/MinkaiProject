import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:my_app/bloc/app_bloc.dart';
import 'package:my_app/src/test_component/model/test_component_model.dart';
import 'package:my_app/src/test_component/ui/screens/content_car_screen.dart';

class ListComponent extends StatelessWidget {
  final String name;
  final String description;
  final String contenido;
  final String url;
  const ListComponent(
      {Key? key,
      required this.name,
      required this.description,
      required this.contenido,
      required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    double height = _appBloc.getHeight();
    double width = _appBloc.getWidth();

    return Container(
        padding: EdgeInsets.all(height * 0.02),
        width: width,
        height: height * 0.3,
        child: Row(
          children: [
            Container(
              width: width * 0.3,
              decoration: BoxDecoration(
                  //color: Colors.orange,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage(url))),
            ),
            Container(
              width: width * 0.6,
              child: Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Text(name,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: height * 0.03),
                        child: Text(description)),
                    /* IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_box_outlined,
                          color: Colors.black,
                        )) */
                    Center(
                      child: IconButton(
                        icon: const Icon(Icons.add_box_outlined,
                            color: Colors.red),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContentRoute(
                                        url: url,
                                        name: name,
                                        contenido: contenido,
                                      )));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
