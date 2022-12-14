import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: Scaffold(
        body:Center(child:Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 40),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_outlined),color: Colors.teal.shade600),
                 actions: <Widget>[
                IconButton(
                    icon: Icon(
                        Icons.settings,
                        color: Colors.teal.shade600),
                    onPressed: () {})]
                  ),
                SizedBox(height:40),
                Align(alignment: Alignment.topLeft,
                child: Text('Edit Profile',style: TextStyle(fontSize: 35))),
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 55.0,
                  backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCv-lG-ElMQhqQBRj6-JIJCdFRmbTRpedngw&usqp=CAU')),
                SizedBox(height:40),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'FullName',
                      border:UnderlineInputBorder())
                  ),
                SizedBox(height: 5),
                TextFormField(
                    decoration: const InputDecoration(labelText: 'E-mail',
                        border:UnderlineInputBorder())),
                TextFormField(
                    obscureText:true,
                    decoration: const InputDecoration(labelText: 'Password',
                        border:UnderlineInputBorder(),suffixIcon: Icon(Icons.remove_red_eye))),
                TextFormField(
                    decoration: const InputDecoration(labelText: 'Location',
                        border:UnderlineInputBorder())),
                SizedBox(height:100),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(style:TextButton.styleFrom(backgroundColor: Colors.white,
                        primary:Colors.black,
                        textStyle:const TextStyle(fontSize:20),
                        minimumSize:Size(160,35),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(50))
                    ),onPressed: (){},child:const Text('CANCEL')),
                    Text('            '),
                    ElevatedButton(style:ElevatedButton.styleFrom(primary:Colors.teal.shade600,
                        textStyle:const TextStyle(fontSize:20),
                        minimumSize:Size(160,35),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                        onPressed: (){},child:const Text('SAVE')),
                    //SizedBox(height:),

                  ],
                )
              ]
          ),
        )
    )));
  }
}
/*
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
 */
