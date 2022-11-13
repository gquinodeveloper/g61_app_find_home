import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';

class Header extends StatelessWidget {
  Header({
    required this.path,
  });

  final String path;
  int? aviable;

  @override
  Widget build(BuildContext context) {
    final arrPhotos = path.split(',');
    return SizedBox(
      width: double.infinity,
      height: 380.0,
      child: ConstrainedBox(
        child: Swiper(
          outer: false,
          itemBuilder: (context, index) {
            return Hero(
              tag: "key_$path",
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(arrPhotos[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
          pagination: const SwiperPagination(
            margin: EdgeInsets.all(50.0),
          ),
          itemCount: arrPhotos.length,
        ),
        constraints: BoxConstraints.loose(
          const Size(
            200.0,
            170.0,
          ),
        ),
      ),
    );
  }
}
