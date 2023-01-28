import 'package:flutter/material.dart';
import 'package:okventasapp/Data/API.dart';
import 'package:okventasapp/Pages/Account/Widgets/AccountImage.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key, required this.id});
  int id;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[300],
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration:
                  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
              width: double.infinity,
              height: double.infinity,
              child: Column(children: [
                AccountImage(
                  id: id,
                ),
                datos(),
                Expanded(
                  child: GridView(
                    padding: const EdgeInsets.all(20),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 40,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20),
                    children: [
                      ElevatedButton.icon(
                          onPressed: () {}, icon: Icon(Icons.add), label: Text("Nuevo Post")),
                      ElevatedButton.icon(
                          onPressed: () {}, icon: Icon(Icons.list), label: Text("Mis Post")),
                    ],
                  ),
                )
              ]),
            ),
          )),
    );
  }

  FutureBuilder<String> datos() {
    return FutureBuilder(
      future: API.getCredenciales(id, "usersName"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              snapshot.data!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          );
        } else if (snapshot.hasError) {
          return const Text("Error Data");
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
