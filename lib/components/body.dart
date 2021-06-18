import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/components/title_with_more_btn.dart';
import 'package:plant_app_ui/constants.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int text = 0;
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          SizedBox(height: 36.0),
          TitleWithMoreButton(title: 'Recommended'),
          Container(
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding * 2.5,
            ),
            width: size.width * 0.4,
            child: Column(
              children: [
                RecommendedPlantCard(
                  title: 'SAMANTHA',
                  image: 'assets/images/image_1.png',
                  country: 'Russia',
                  press: (){},
                  price: 440,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  final String image;
  final int price;
  final String title;
  final String country;
  final Function press;
  const RecommendedPlantCard({
    Key? key,
    required this.image,
    required this.price,
    required this.title,
    required this.country,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50.0,
                    color: kPrimaryColor.withOpacity(0.2),
                  ),
                ]),
            child: Row(
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: '${title}\n',
                      style: Theme.of(context).textTheme.button),
                  TextSpan(
                      text: country.toUpperCase(),
                      style: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      )),
                ])),
                Spacer(),
                Text(
                  '\$${price}',
                  style: Theme.of(context)
                      .textTheme
                      .button
                      ?.copyWith(color: kPrimaryColor),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
