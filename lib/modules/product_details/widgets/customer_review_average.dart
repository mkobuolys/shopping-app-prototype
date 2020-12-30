import 'package:flutter/material.dart';

class CustomerReviewAverage extends StatelessWidget {
  const CustomerReviewAverage({
    @required this.average,
  });

  final double average;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$average',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Icon(
          Icons.star,
          size: 20.0,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
