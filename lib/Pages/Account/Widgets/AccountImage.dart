import 'package:flutter/material.dart';
import 'package:okventasapp/Data/API.dart';

class AccountImage extends StatelessWidget {
  AccountImage({super.key, required this.id});
  int id;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Fondo(), ImagenAccount()],
    );
  }

  ImagenAccount() {
    return FutureBuilder(
      future: API.getCredenciales(id, "usersImage"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Center(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: NetworkImage(snapshot.data!))),
            ),
          );
        } else if (snapshot.hasError) {
          return const Text("Error data");
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  Container Fondo() {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20)),
    );
  }
}
