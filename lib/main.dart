import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mythemespractice/MyThemes/MyThemesData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

bool isYellow = false;
bool isDark = false;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: 'Flutter Demo Home Page');
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemes.myAppCurrentTheme,
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Yellow Theme'),
                    Transform.scale(
                      transformHitTests: false,
                      scale: .8,
                      child: CupertinoSwitch(
                        activeColor: Colors.blue,
                        value: isYellow,
                        onChanged: (value) {
                          isYellow = value;
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Green Theme'),
                    Transform.scale(
                      transformHitTests: false,
                      scale: .8,
                      child: CupertinoSwitch(
                        activeColor: Colors.blue,
                        value: isDark,
                        onChanged: (value) {
                          isDark = value;
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
                Divider(),
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 40),
              FlatButton(
                child: Text('FlatButton'),
                onPressed: () {
                  setState(() {});
                },
              ),
              ElevatedButton(onPressed: () {}, child: Text('ElevatedButton')),
              MaterialButton(
                child: Text('MaterialButton'),
                onPressed: () {},
              ),
              BackButton(
                color: Theme.of(context).buttonColor,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          foregroundColor:
              Theme.of(context).floatingActionButtonTheme.foregroundColor,
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
