import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/base_material_widget.dart';
import 'package:my_app/common/route_help.dart';
import 'common/common_channel.dart';
import 'home/home_page.dart';

void main() => runApp(const MyApp());

@pragma('vm:entry-point')
void toMarketPages() => runApp(const HomePageWidget());

class MyApp extends BaseMaterialWidget {
  const MyApp({super.key});

  @override
  Widget home(BuildContext context) {
    return const MyHomePage(title: 'Flutter Main Page');
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return CupertinoButton(
              child: Text(RouteManager().routeMap.keys.elementAt(index)),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return RouteManager().routeMap.values.elementAt(index);
                }));
              },
            );
          },
          itemCount: RouteManager().routeMap.length,
        ));
  }
}
