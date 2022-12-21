import 'dart:ffi';

import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  const PostTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: const FadeInImage(
                placeholder: NetworkImage(
                    'https://media.tenor.com/UnFx-k_lSckAAAAM/amalie-steiness.gif'),
                image: NetworkImage(
                    'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
              top: 5,
              right: 5,
              child: CircleAvatar(
                child: Icon(
                  Icons.favorite_border,
                  size: 12,
                  color: Colors.black,
                ),
                radius: 8,
                backgroundColor: Colors.white,
              ),
            )
          ],
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pent House Apartment",
                style: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey[500],
                    size: 16,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Text(
                      "7277 Rue Saint - Jacques, Montreal, Cusco Perú",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "\$ 750",
                style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              Icon(
                Icons.star_rounded,
                color: Colors.yellow[700],
                size: 16,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "4.0",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          width: 40,
        ),
      ],
    );
  }
}
