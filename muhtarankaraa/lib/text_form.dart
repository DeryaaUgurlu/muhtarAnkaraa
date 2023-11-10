import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  const TextForm({super.key});

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  String _ceptelefonu = '', _sifre = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: Text('Muhtar Ankara',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                ),
                /* Text('MUHTAR',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 45,
                        fontWeight: FontWeight.bold)), */
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 300,
                  width: 300,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                      keyboardType: TextInputType.phone,
                      validator: (deger) {
                        if (deger!.length < 10) {
                          return '10 karakter girmelisiniz';
                        } else {
                          return null;
                        }
                      },
                      autofocus: true,
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                          labelText: 'Cep Telefonunuzu Giriniz',
                          labelStyle: TextStyle(
                            fontSize: 17,
                          ),
                          hintText: '+(90) 5__ ___ __ __',
                          // hintStyle: TextStyle(color: Colors.blue),
                          prefixIcon: Icon(Icons.call),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)))),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (deger) {
                      if (deger!.length < 4) {
                        return 'Şifre en az 4 karakter olmalı';
                      } else {
                        return null;
                      }
                    },
                    autofocus: true,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                        // errorStyle: TextStyle(color: Colors.red),
                        labelText: 'Şifrenizi Giriniz',
                        labelStyle: TextStyle(
                          fontSize: 17,
                        ),
                        hintText: '****',
                        // hintStyle: TextStyle(color: Colors.blue),
                        prefixIcon: Icon(Icons.key_sharp),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                SizedBox(
                  width: 15,
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('GiRİŞ YAPINIZ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
