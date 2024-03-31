import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/global_varibles.dart';
import '../../../providers/user_provider.dart';
import '../widgets/address_box.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: const Text(
            'Deal of the Day',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Image.network(
          'https://media.istockphoto.com/photos/brick-picture-id174625708?k=20&m=174625708&s=612x612&w=0&h=OXh2om6uLsHaGp3EdTH-M1XPItRh7KodZdyXsmDlrjA=',
          height: 235,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15),
          alignment: Alignment.topLeft,
          child: const Text(
            '\$100',
           style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          alignment: Alignment.topLeft,
          child: const Text(
            'Shreyas',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network('https://media.istockphoto.com/photos/brick-picture-id174625708?k=20&m=174625708&s=612x612&w=0&h=OXh2om6uLsHaGp3EdTH-M1XPItRh7KodZdyXsmDlrjA=',fit: BoxFit.fitWidth,width: 100,height: 100),
              Image.network('https://media.istockphoto.com/photos/brick-picture-id174625708?k=20&m=174625708&s=612x612&w=0&h=OXh2om6uLsHaGp3EdTH-M1XPItRh7KodZdyXsmDlrjA=',fit: BoxFit.fitWidth,width: 100,height: 100),
              Image.network('https://media.istockphoto.com/photos/brick-picture-id174625708?k=20&m=174625708&s=612x612&w=0&h=OXh2om6uLsHaGp3EdTH-M1XPItRh7KodZdyXsmDlrjA=',fit: BoxFit.fitWidth,width: 100,height: 100),
              Image.network('https://media.istockphoto.com/photos/brick-picture-id174625708?k=20&m=174625708&s=612x612&w=0&h=OXh2om6uLsHaGp3EdTH-M1XPItRh7KodZdyXsmDlrjA=',fit: BoxFit.fitWidth,width: 100,height: 100),

            ],

          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 15,
          ).copyWith(left : 15),
          alignment: Alignment.topLeft,
          child: const Text(
            'See all deals',
            style: TextStyle(
              color: Colors.cyan,
            ),
          ),
        )
      ],
    );
  }
}
