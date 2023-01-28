import 'package:flutter/material.dart';
import 'package:okventasapp/Common/common.dart';
import 'package:okventasapp/Data/API.dart';

class HomeCategorias extends StatelessWidget {
  const HomeCategorias({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /**
           * Texto Categorias
           */

          const Text(
            "Categorias",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          Common.space(10),

          /**
           * Item de categoria
           */
          myItemCategoria()
        ],
      ),
    );
  }

  myItemCategoria() {
    return FutureBuilder(
      future: API.getCategory(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data == null ? 0 : snapshot.data!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Image(
                          width: 50,
                          image: NetworkImage(snapshot.data![index]["categoriesImage"]),
                        ),
                      )),
                );
              },
            ),
          );
        } else if (snapshot.hasError) {
          return const Text("Error Data");
        } else {
          return const Text("...");
        }
      },
    );
  }
}
