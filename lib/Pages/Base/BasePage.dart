import 'package:flutter/material.dart';
import 'package:okventasapp/Pages/Account/AccountPage.dart';
import 'package:okventasapp/Pages/Home/HomePage.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int numPage = 0;

  @override
  Widget build(BuildContext context) {
    int id = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
        bottomNavigationBar: myNavigationBar(),
        body: numPage == 0
            ? HomePage(
                id: id,
              )
            : AccountPage(
                id: id,
              ));
  }

  myNavigationBar() {
    return BottomNavigationBar(
        currentIndex: numPage,
        onTap: (value) {
          setState(() {
            numPage = value;
            print(value);
          });
        },
        items: [
          miItemNavigationBar(Icons.home, "Home"),
          miItemNavigationBar(Icons.person, "Account")
        ]);
  }

  miItemNavigationBar(IconData icon, String text) {
    return BottomNavigationBarItem(icon: Icon(icon), label: text);
  }
}
