import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String gambar = "";
    String nama = "ini adalah nama";
    List<String> namax = [
      "putri wulan",
      "putri wulan",
      "putri wulan",
      "putri wulan",
      "putri wulan",
      "putri wulan",
    ];
    String tes = "mahasiswi";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      // home: Test(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          leading: Icon(Icons.home),
          title: Text(
            'Uji Coba',
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding:
                  EdgeInsets.only(right: 16.0), // Adjust the value as needed
              child: Icon(
                Icons.menu,
              ),
            ),
          ],
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: namax.length,
              itemBuilder: (context, index) {
                String imagePath =
                    'assets/image${index + 1}.png'; // Assuming your image names are like 'image1.png', 'image2.png', etc.
                return ListTile(
                  leading: Image.network(
                    "https://www.wowkeren.com/display/images/photo/2019/11/23/00284516.jpg",
                    width: 48, // Sesuaikan ukuran gambar dengan preferensi Anda
                    height: 48,
                  ),
                  title: Text(namax[index]),
                  subtitle: Text(tes),
                );
              }),
        )),
      ),
    );
  }
}
