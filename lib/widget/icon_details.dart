import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

class IconDetails extends StatelessWidget {
  final String imageUrl;
  final String text;

  const IconDetails({
    Key? key,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          width: 40,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: whiteTextStyle1.copyWith(
            fontWeight: semiBold,
          ),
        ),
      ],
    );
  }
}
