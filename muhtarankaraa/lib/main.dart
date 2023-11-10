import 'package:flutter/material.dart';
import 'package:text_app/text_form_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TextFormFields(),
      //MyHomePage(title: 'Muhtar Ankara'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController? _tellController;

  @override
  void initState() {
    super.initState();
    _tellController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _tellController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: TextStyle(
              fontSize: 25,
              color: const Color.fromARGB(255, 32, 61, 110),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(
                height: 70,
              ),
              Image(
                image: AssetImage('assets/images/logo.png'),
                height: 300,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: _tellController,
                  //textAlign: TextAlign.center,
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.go,
                  autofocus: true,
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      labelText: 'Cep Telefonunuzu Giriniz',
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                      prefixIcon: Icon(Icons.call),
                      hintText: '(+90) 5__ ___ __ __',
                      hintStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  onChanged: (String deger) {
                    setState(() {
                      _tellController!.text = deger;
                    });

                    /* print('yazılan $deger');
                    if (deger.length > 3) {
                      print('yazılan $deger');
                    } */
                  },
                  onSubmitted: (String deger) {
                    print('onaylanan değer = $deger');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(_tellController!.text),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  //textAlign: TextAlign.center,
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.go,
                  decoration: InputDecoration(
                      labelText: 'Şifrenizi Giriniz',
                      labelStyle: TextStyle(fontSize: 20),
                      hintText: 'Şifre',
                      hintStyle: TextStyle(fontSize: 20),
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('GiRİŞ YAPINIZ'),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
