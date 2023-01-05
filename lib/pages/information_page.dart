import 'package:flutter/material.dart';
import 'package:feed_app/models/pictures.dart';

import 'package:card_swiper/card_swiper.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Pictures pictures =
        ModalRoute.of(context)!.settings.arguments as Pictures;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(pictures),
          // _Swiper(),
          SliverList(
            delegate: SliverChildListDelegate([
              _PosterAndTitle(pictures),
              _Overview(pictures),
              ElevatedButton(onPressed: () {}, child: const Text('Reservar')),
              // _Swiper(),
            ]),
          )
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  final Pictures pictures;
  const _CustomAppBar(this.pictures);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,

      expandedHeight: 200,
      floating: true,
      pinned: true,
      flexibleSpace: _Swiper(),
      // flexibleSpace: FlexibleSpaceBar(
      //   centerTitle: true,
      //   titlePadding: const EdgeInsets.all(0),
      //   title: Container(
      //     width: double.infinity,
      //     alignment: Alignment.bottomCenter,
      //     color: Colors.black12,
      //     padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
      //     child: Text(
      //       pictures.pais!,
      //       style: const TextStyle(fontSize: 16),
      //       textAlign: TextAlign.center,
      //     ),
      //   ),
      //   background: FadeInImage(
      //     placeholder: const AssetImage('assets/no-image.jpg'),
      //     image: AssetImage(pictures.img),
      //     fit: BoxFit.cover,
      //   ),
      // ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  final Pictures pictures;

  const _PosterAndTitle(this.pictures);

  @override
  Widget build(BuildContext context) {
    // final TextTheme textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: const AssetImage('assets/no-image.jpg'),
              image: AssetImage(pictures.img),
              height: 150,
              width: 110,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: size.width - 190),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pictures.title,
                  style: Theme.of(context).textTheme.headline5,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  pictures.pais!,
                  style: Theme.of(context).textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_outline,
                      size: 15,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      pictures.tipo!,
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Swiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            "https://via.placeholder.com/288x188",
            fit: BoxFit.fill,
          );
        },
        itemCount: 10,
        viewportFraction: 0.8,
        scale: 0.9,
        pagination: const SwiperPagination(),
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  final Pictures pictures;

  const _Overview(this.pictures);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        pictures.text!,
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
