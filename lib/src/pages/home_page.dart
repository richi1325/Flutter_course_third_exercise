import 'package:flutter/material.dart';
import 'package:flutter_course_third_exercirse/src/widgets/card_swiper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscar pelicula'),
        centerTitle: false,
        backgroundColor: Colors.deepPurple.shade900,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){}
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _swiperTarjetas(),
          ],
        )
      ),
      //Se emplea para respertar el área del notch
      //body:SafeArea(
      //  child: Text('Hola Mundo'),
      //) 
    );

  }

  _swiperTarjetas() {

    return CardSwiper(
      elementos: [1,2,3,4,5]
    );
  }
}