import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {

  final List<dynamic> elementos;

  CardSwiper({@required this.elementos});

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top:20.0),
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width * 0.7,
        itemHeight: _screenSize.height * 0.5,
        itemBuilder: (BuildContext context, int index){
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fminecraftweb.com%2Fwp-content%2Fuploads%2F2020%2F08%2FNether-Portal-This-feature-of-Minecraft-has-many-advantages-than.jpg&f=1&nofb=1",
                    fit: BoxFit.fill),
          );
        },
        itemCount: elementos.length,
        //pagination: SwiperPagination(),
        //control: SwiperControl()
      ),
    );
  }
}