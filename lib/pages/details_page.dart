import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/widget/icon_details.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/image_detail.png',
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 60,
                    left: 30,
                  ),
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_back.png'),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 30,
                right: 30,
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bali, Indonesia',
                    style: yellowTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconDetails(
                        imageUrl: 'assets/icon_star.png',
                        text: '4.92',
                      ),
                      IconDetails(
                        imageUrl: 'assets/icon_cloud.png',
                        text: '27ºC',
                      ),
                      IconDetails(
                        imageUrl: 'assets/icon_plane.png',
                        text: '9 Jan',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: whiteTextStyle2.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Bali is famous for beaches, countless waves for\nsurfing scuba diving, natiral sites to visit and\nexplore tremely fascinating Hindus culture with\ncolorfuls ceremonies and magnificent temples\ngifted artists the producing.',
              style: whiteTextStyle2.copyWith(
                fontSize: 13,
                wordSpacing: 3,
              ),
            ),
          ],
        ),
      );
    }

    Widget bottom() {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 30,
        ),
        decoration: BoxDecoration(
          color: kBlackColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Starting From',
                  style: whiteTextStyle2.copyWith(
                    fontSize: 13,
                  ),
                ),
                Text(
                  '\$500 - 750',
                  style: yellowTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            Container(
              width: 150,
              decoration: BoxDecoration(
                color: kYellowColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Book Now',
                  style: whiteTextStyle2.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            content(),
            bottom(),
          ],
        ),
      ),
    );
  }
}
