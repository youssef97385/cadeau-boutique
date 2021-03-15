import 'package:flutter/material.dart';

import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget cadeaue_boutiqueAppbar({Size size,FocusNode focusNode,bool clearText,Function onTap}){
  return  Container(
    height: size.height * 0.18,
    width: size.width,
    color: AppColor.mainColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * 0.03,
        ),
        appNameText(30),
        SizedBox(
          height: size.height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/images/notification.svg',
              ),
            ),
            Container(
                width: size.width * 0.8,
                height: size.height * 0.04,
                child: Stack(
                  children: [
                    TextFormField(
                      focusNode: focusNode,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 8),
                        // hintText:  '${AppLocalizations.of(context).translate('username')}',
                        hintStyle: TextStyle(
                            fontSize: 16, color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            width: 0.1,

                            // style: BorderStyle.solid,
                            color: Colors.white,
                          ),
                        ),
                        fillColor: AppColor.mainColorDark,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            width: 1,
                            color: AppColor.mainColorDark,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: AppColor.mainColorDark,
                            width: 1,
                          ),
                        ),
                        filled: true,
                        // contentPadding: EdgeInsets.all(16),
                        //  suffixIcon: Icon(Icons.person_outlined,color:Colors.white)
                      ),
                    ),
                    clearText == false
                        ? GestureDetector(
                      onTap: () {
                       onTap();
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Text(
                              'search',
                              style:
                              TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    )
                        : Container()
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/images/Icon feather-message-square.svg',
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.01,
        )
      ],
    ),
  );
}