import 'package:flutter/material.dart';

class MyItems extends StatefulWidget {
  const MyItems({super.key});

  @override
  State<MyItems> createState() => _MyItemsState();
}

class _MyItemsState extends State<MyItems> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [myItem()],
    );
  }

  myItem() {
    return Card(
      elevation: 20,
      margin: EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
          Row(
            children: [
              //Pre imagen, Nombre, Descripcion
              myMiniImagen(),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [myNombreItem(), myDescriptionItem()],
              ),
            ],
          ),

          //Card de imagen, //corazones, comentarios
          myListImageItem()
        ],
      ),
    );
  }

  myMiniImagen() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 15, bottom: 20, left: 8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://i.picsum.photos/id/905/200/200.jpg?hmac=PxOdpEd_gpj1SeeC1DMysEuacd5-lp9jjs1wfD4ds74"))),
        width: 50,
        height: 50,
      ),
    );
  }

//
  myNombreItem() {
    return const Text(
      "Nature",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }

  myDescriptionItem() {
    return const Text(
      "Un lugar bonito por algun lado",
      style: TextStyle(fontSize: 10),
    );
  }

//PARTE 2

  myListImageItem() {
    return Container(
      height: 190.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [myItemImage(), myItemImage(), myItemImage()],
      ),
    );
  }

  myItemImage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 280,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://i.picsum.photos/id/251/400/200.jpg?hmac=w2L44wInm_r_1qEBhGeuHDedLyBon6Yq9_tOy5GQ0_Q"))),
      ),
    );
  }
}
