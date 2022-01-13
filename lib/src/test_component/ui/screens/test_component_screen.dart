import 'dart:math';

import 'package:MinkaiProject/src/team/ui/screens/team_screen.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:MinkaiProject/bloc/app_bloc.dart';
import 'package:MinkaiProject/src/test_component/ui/widgets/cube_list.dart';

class TestScreen extends StatefulWidget {
  TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> autosRojos = [
    const ListComponent(
        name: "Moto G",
        contenido:
            "mFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSK",
        description:
            "FIIIIIIUUUmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSK",
        url:
            "https://media.istockphoto.com/photos/illustration-of-generic-red-car-on-white-background-picture-id1146583348"),
    const ListComponent(
        name: "Moto H",
        contenido:
            "mFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSK",
        description:
            "MEGA FIUUUUUUMASFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFASFASFSA",
        url:
            "https://images.unsplash.com/photo-1580446623001-3abf670c5c55?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmVkJTIwY2FyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80"),
    const ListComponent(
        name: "Moto F",
        contenido:
            "mFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSK",
        description:
            "AUN MAS FIUUUUUUMAAAFAAJFJASIOPFJAIOJFOIAJFIAJFJAFJOAISJFASJFOAJSOFJASOIF",
        url:
            "https://p4.wallpaperbetter.com/wallpaper/404/106/480/vehicles-pogea-racing-fplus-corsa-car-red-car-wallpaper-thumb.jpg")
  ];

  static List<Widget> autosAzules = [
    const ListComponent(
        name: "Moto A",
        contenido:
            "mFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSK",
        description:
            "FIIIIIIUUUmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSK",
        url: "https://i.ytimg.com/vi/5kFrhWuDphc/maxresdefault.jpg"),
    const ListComponent(
        name: "Moto B",
        contenido:
            "mFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSK",
        description:
            "MEGA FIUUUUUUMASFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFASFASFSA",
        url:
            "https://eftm.com/wp-content/uploads/2019/12/Ford-Focus-ST-Line.jpg"),
    const ListComponent(
        name: "Moto C",
        contenido:
            "mFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSK",
        description:
            "AUN MAS FIUUUUUUMAAAFAAJFJASIOPFJAIOJFOIAJFIAJFJAFJOAISJFASJFOAJSOFJASOIF",
        url:
            "https://image.shutterstock.com/image-illustration/blue-coupe-sporty-car-generic-260nw-722682265.jpg")
  ];

  static List<Widget> autosNegros = [
    const ListComponent(
        name: "Moto W",
        contenido:
            "mFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSK",
        description:
            "FIIIIIIUUUmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSK",
        url:
            "https://cdn.autobild.es/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2018/01/turkmenistan.jpg?itok=C96WOEm_"),
    const ListComponent(
        name: "Moto Y",
        contenido:
            "mFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSK",
        description:
            "MEGA FIUUUUUUMASFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFASFASFSA",
        url:
            "https://img.automexico.com/crop/840x640/2019/05/22/wCRDWz6M/aston-martin-vantage-onyx-black-2019-1280-02-1839.jpg"),
    const ListComponent(
        name: "Moto Z",
        contenido:
            "mFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSKmFIIIFAKFK90KASFOKFASPKAFSKPOAKPOAKSFOPKASFPOKPAOSK",
        description:
            "AUN MAS FIUUUUUUMAAAFAAJFJASIOPFJAIOJFOIAJFIAJFJAFJOAISJFASJFOAJSOFJASOIF",
        url:
            "https://media.diariorepublica.com/cms/wp-content/uploads/2018/04/carro-negro.jpg")
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final AppBloc _appBloc = BlocProvider.of<AppBloc>(context);
    _appBloc.setSize(size.width, size.height);

    double width = _appBloc.getWidth();
    double height = _appBloc.getHeight();

    final List<Widget> _widgetOptions = [
      Column(
        children: [
          const Text(
            'Autos rojos',
            style: optionStyle,
          ),
          Expanded(
              child: Container(
                  height: height * 0.7, child: ListView(children: autosRojos)))
        ],
      ),
      Column(
        children: [
          const Text(
            'Autos azules',
            style: optionStyle,
          ),
          Expanded(
            child: Container(
                height: height * 0.7, child: ListView(children: autosAzules)),
          )
        ],
      ),
      Column(
        children: [
          const Text(
            'Autos negros',
            style: optionStyle,
          ),
          Expanded(
            child: Container(
                height: height * 0.7, child: ListView(children: autosNegros)),
          )
        ],
      ),
      TeamScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text("data"), //_widgetOptions.elementAt(_selectedIndex), //
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair),
            label: 'Red',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair_outlined),
            label: 'Blue',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair_sharp),
            label: 'Black',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: 'Team',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
