import 'package:flutter/material.dart';
import 'package:okventasapp/Common/common.dart';
import 'package:okventasapp/Pages/Home/Widgets/HomeImagenUser.dart';

class HomePublicaciones extends StatelessWidget {
  const HomePublicaciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: [
        myItemGeneral(),
        myItemGeneral(),
        myItemGeneral(),
      ],
    ));
  }

  Card myItemGeneral() {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.only(left: 20, right: 10, top: 0, bottom: 20),
      child: Column(
        children: [myTopPublicacion(), myImagePublicacionPrincipal()],
      ),
    );
  }

  myTopPublicacion() {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(13),
          child: HomeImagenUser(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sistema de financiacion",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              "@" + Common.convertSpace("Sebastian Abal Salazar"),
              style: const TextStyle(color: Colors.grey),
            )
          ],
        )
      ],
    );
  }

  myImagePublicacionPrincipal() {
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
