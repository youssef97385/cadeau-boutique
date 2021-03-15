import 'package:flutter/material.dart';

class CustomSwitchLang extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;

  const CustomSwitchLang(
      {Key key, this.value, this.onChanged, this.activeColor})
      : super(key: key);

  @override
  _CustomSwitchLangState createState() => _CustomSwitchLangState();
}

class _CustomSwitchLangState extends State<CustomSwitchLang>
    with SingleTickerProviderStateMixin {
  Animation _circleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.linear));
    print(' widget.value => ${widget.value}');
  }

  @override
  Widget build(BuildContext context) {
    if (widget.value) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
              print('reverse :${_circleAnimation.value}');
            } else {
              _animationController.forward();
              print('forward :${_circleAnimation.value}');
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Container(
            width: 60.0,
            height: 30.0,
            decoration: BoxDecoration(
              color: widget.activeColor,
              borderRadius: BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(1.0, 5.0), //(x,y)
                  blurRadius: 1,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 4.0, bottom: 4.0, right: 4.0, left: 4.0),
              child: Align(
                  alignment: _circleAnimation.value,
                  child: widget.value == true
                      ? Container(
                          width: 22.0,
                          height: 22.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color.fromRGBO(255, 115, 18, 1),
                                  Color.fromRGBO(255, 157, 54, 1),
                                ]),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(1.0, 3.0),
                                //(x,y)
                                blurRadius: 1,
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text(
                            "en",
                            style: TextStyle(color: Colors.white),
                          )),
                        )
                      : Container(
                          width: 22.0,
                          height: 22.0,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(109, 110, 113, 1),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(1.0, 3.0),
                                //(x,y)
                                blurRadius: 1,
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text(
                            "ar",
                            style: TextStyle(color: Colors.white),
                          )),
                        )),
            ),
          ),
        );
      },
    );
  }
}
