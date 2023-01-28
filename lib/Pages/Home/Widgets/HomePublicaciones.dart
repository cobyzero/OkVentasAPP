import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:okventasapp/Data/API.dart';

class HomePublicaciones extends StatelessWidget {
  HomePublicaciones({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: API.getPost(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.isEmpty
                  ? 0
                  : snapshot.data!.length >= 3
                      ? 3
                      : 1,
              itemBuilder: (context, index) {
                return myItemGeneral(snapshot.data![index]["postName"],
                    snapshot.data![index]["usersId"], snapshot.data![index]["postImage"]);
              });
        } else if (snapshot.hasError) {
          return const Text("Error data");
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }

  myItemGeneral(String titulo, int id, String imagen) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 10, bottom: 20),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(imagen))),
          width: 300,
          height: 400,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                height: 80,
                width: 300,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 40),
                child: Text(
                  titulo,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, bottom: 20),
                child: Text(
                  "@Sebastian_Abal_Salazar",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              )
            ],
          )),
    );
  }
}
