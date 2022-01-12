import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class AppBloc extends Bloc {
  double width = 0;
  double height = 0;


  void setSize(double w, double h) {
    width = w;
    height = h;
    return;
  }

  double getWidth() {
    return width;
  }

  double getHeight() {
    return height;
  }

  @override
  void dispose() {}
}
