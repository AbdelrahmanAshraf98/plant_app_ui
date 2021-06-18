import 'package:flutter/material.dart';

import '../constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  final String title;
  const TitleWithMoreButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomeunderline(
            text: title,
          ),
          Spacer(),
          MaterialButton(
            onPressed: (){},
            child: Text('More',style: TextStyle(color: Colors.white),),
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomeunderline extends StatelessWidget {
  final String text;
  const TitleWithCustomeunderline({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.0,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7.0,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}