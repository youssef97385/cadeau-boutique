
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class EmptyPage extends StatelessWidget {

  Size size;

  String image;

  String title;
  String subTitle;


  EmptyPage({this.size, this.image, this.title, this.subTitle=""});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Stack(
          children: [
            Container(
                width: size.width,
                height: size.height * 0.6,
                child: Image.asset(
                  "assets/images/background.png",
                  fit: BoxFit.cover,
                )),
            Positioned(
              bottom: -60,
              right: 0,
              left: 0,
              child: Container(
                  width: 483,
                  height: 192,
                  child: SvgPicture.asset(
                    "assets/images/bottombackground.svg",
                    fit: BoxFit.cover,
                  )),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  baseText(
                      title: title,
                      color: AppColor.darkTextColor,
                      size: 24.0),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                      width: size.width,
                      child: Center(
                          child: baseText(
                              title:
                              subTitle,
                              size: 14.0,
                              color: AppColor
                                  .darkTextColor,
                              textAlign:
                              TextAlign.center))),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Image.asset(
                    image==null?"assets/images/shopping-bag (2).png":image,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  SvgPicture.asset(
                    "assets/images/shadow.svg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
