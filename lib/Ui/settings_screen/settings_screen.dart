
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _groupValue = -1;
  bool _sounds = false;
  bool _vibration = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              baseAppBar(size,context),
              SizedBox(height:20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:24.0),
                child: Column(
                  children: [
                    singleItem("assets/images/settings/language.svg", "Language"),
                    SizedBox(height: 15,),
                    _myRadioButton(
                      title: "Arabic",
                      value: 0,
                      onChanged: (newValue) => setState(() => _groupValue = newValue),
                    ),
                    _myRadioButton(
                      title: "English",
                      value: 1,
                      onChanged: (newValue) => setState(() => _groupValue = newValue),
                    ),

                    SizedBox(height: 20,),
                    singleItem("assets/images/settings/notification.svg", "Notifications"),
                    SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        baseText(title: "Sounds" ,size:17.0 ,color:AppColor.lightTextColor,),
                        Transform.scale(
                          scale: 0.65,
                          child: CupertinoSwitch(

                            activeColor: AppColor.darkYellow,
                            value: _sounds,
                            onChanged: (bool value) {
                              setState(() {
                                _sounds = value;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        baseText(title: "Vibration" ,size:17.0 ,color:AppColor.lightTextColor,),
                        Transform.scale(
                          scale: 0.65,
                          child: CupertinoSwitch(
                            activeColor: AppColor.darkYellow,
                            value: _vibration,
                            onChanged: (bool value) {
                              setState(() {
                                _vibration = value;
                              });
                            },
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 30,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        singleItem("assets/images/settings/padlock.svg", "Privacy"),
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: Icon(Icons.arrow_forward_ios , color: Color(0xff393741),size: 20,),
                        )
                      ],
                    ),
                    SizedBox(height: 30,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        singleItem("assets/images/settings/verified.svg", "Security"),
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: Icon(Icons.arrow_forward_ios , color: Color(0xff393741),size: 20,),
                        )
                      ],
                    )
,
                    SizedBox(height: 60,),

                    singleItem("assets/images/drawer/share.svg", "Invite a friend"),
                    SizedBox(
                      height: 30,
                    ),
                    singleItem("assets/images/drawer/question.svg", "Help and feedback"),

                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      // margin: EdgeInsets.only(bottom: 80),
                      height: size.height * 0.07,
                      width: size.width * .5,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 5,
                            spreadRadius: 3,
                          ),
                        ],
                        gradient: LinearGradient(
                          colors: [
                            AppColor.darkYellow,
                            AppColor.lightYellow
                          ],
                          stops: [0.1, 0.96],
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: FlatButton(
                        // splashColor: Colors.red,
                        onPressed: () {
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/images/drawer/logout.svg"),
                            SizedBox(width:10),
                            Text(
                              'Log Out',
                              style: TextStyle(
                                color: AppColor.textColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
  Widget singleItem(String icon , String title){
    return  Row(
      children: [
        SvgPicture.asset(icon),
        SizedBox(width: 10,),
        baseText(title: title ,size:17.0 ,color:AppColor.lightTextColor,)
      ],
    );
  }
  Widget _myRadioButton({String title, int value, Function onChanged}) {
    return RadioListTile(

      activeColor: AppColor.darkYellow,
      value: value,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: baseText(title:title , size: 18.0, color: AppColor.textColor),
    );
}
}
