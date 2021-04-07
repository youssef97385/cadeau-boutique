
import 'package:cadeaue_boutique/Ui/home/page/bloc/home_bloc.dart';
import 'package:cadeaue_boutique/Ui/home/page/bloc/home_event.dart';
import 'package:cadeaue_boutique/Ui/home/page/bloc/home_state.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../injectoin.dart';



class WaitDialog extends StatefulWidget {
  @override
  _WaitDialogState createState() => _WaitDialogState();
}

class _WaitDialogState extends State<WaitDialog> {


  bool isLoading = false;
  final _bloc = sl<HomeBloc>();

/*
  Future<void> logout() async {
    setState(() {
      isLoading=true;
    });
    var response=await logoutRQ();
    Navigator.of(context).pop(response);
    setState(() {
      isLoading=false;
    });
  }*/

  @override
  void initState() {
/*   if(mounted)
     logout();*/

    _bloc.add(IniEvent());
    _bloc.add(LogoutEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, HomeState state) {

          error(state.error);
          if (state.success) {
            /* WidgetsBinding.instance.addPostFrameCallback(
                  (_) => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => WelcomePage(),
                ),
              ));*/

            error(AppLocalizations.of(context).translate("successful_operation"));
            Navigator.of(context).pop(true);
          }else{
            Navigator.of(context).pop(false);
          }

    return  AlertDialog(
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
            borderSide: BorderSide.none),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(
              width: 4.0,
            ),
            Text(
                AppLocalizations.of(context).translate("logout"),
              style: TextStyle(
              color: AppColor.textColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            ),
          ],

        ),

        content: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: state.isLoading?Container(
              height: 120,
              width: width,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child:  CircularProgressIndicator(
                      backgroundColor: AppColor.darkYellow,),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        AppLocalizations.of(context).translate("plz_wait"),
                         style: TextStyle(
                        color: AppColor.textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      )),
                ],
              ),
            ):Container(
              height: 120,
              width: width,)

        )


    );});
  }

  void error(String errorCode) {
    if (errorCode.isNotEmpty) {
      Fluttertoast.showToast(
          msg: errorCode,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          //timeInSecForIos: 1,
          backgroundColor: Colors.red.withOpacity(0.8),
          textColor: Colors.white,
          fontSize: 16.0);

    }
  }
}
