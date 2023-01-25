import 'package:flutter/material.dart';
import 'package:okventasapp/Common/common.dart';
import 'package:okventasapp/Data/API.dart';

class HomePublicaciones extends StatelessWidget {
  const HomePublicaciones({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: API.getPost(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Expanded(
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return myItemGeneral(snapshot.data![index]["nombre"],
                        snapshot.data![index]["CredencialesId"], snapshot.data![index]["imagen"]);
                  }));
        } else if (snapshot.hasError) {
          return Text("Error data");
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  Card myItemGeneral(String titulo, int id, String imagen) {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.only(left: 20, right: 10, top: 0, bottom: 20),
      child: Column(
        children: [myTopPublicacion(titulo, id), myImagePublicacionPrincipal(imagen)],
      ),
    );
  }

  myFutureBuilderForImagePerfil(int id) {
    return FutureBuilder(
      future: API.getCredenciales(id, "foto"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
                image: DecorationImage(image: NetworkImage(snapshot.data!))),
          );
        } else if (snapshot.hasError) {
          return Text("error data");
        } else {
          return Text("...");
        }
      },
    );
  }

  myTopPublicacion(String titulo, int id) {
    return Row(
      children: [
        Padding(padding: const EdgeInsets.all(13), child: myFutureBuilderForImagePerfil(id)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            FutureBuilder(
              future: API.getCredenciales(id, "name"),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text("Error");
                } else if (snapshot.hasData) {
                  return Text(
                    "@" + Common.convertSpace(snapshot.data!),
                    style: const TextStyle(color: Colors.grey),
                  );
                } else {
                  return Text("...");
                }
              },
            )
          ],
        )
      ],
    );
  }

  myImagePublicacionPrincipal(String imagen) {
    return Padding(
      padding: const EdgeInsets.all(13),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(20),
            image:
                const DecorationImage(fit: BoxFit.cover, image: AssetImage("assets/producto.jpg"))),
      ),
    );
  }
}
