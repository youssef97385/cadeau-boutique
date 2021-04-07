import 'package:cadeaue_boutique/Ui/all_products_screen/bloc/products_bloc.dart';
import 'package:cadeaue_boutique/core/response_hassan.dart';
import 'package:cadeaue_boutique/data/db_helper/Idb_helper.dart';
import 'package:cadeaue_boutique/data/http_helper/Ihttp_helper.dart';
import 'package:cadeaue_boutique/data/prefs_helper/iprefs_helper.dart';
import 'package:cadeaue_boutique/data/repository/irepository.dart';
import 'package:cadeaue_boutique/data/repository/repository.dart';
import 'package:cadeaue_boutique/model/track_home_model/TrackHomeModel.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeline/model/timeline_model.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeline/timeline.dart';
import 'package:cadeaue_boutique/model/static/occasions_model.dart';
import 'package:cadeaue_boutique/model/track_home_model/Data.dart';
import 'package:cadeaue_boutique/model/track_model/track_model.dart';
import 'package:cadeaue_boutique/Ui/track_screen/bloc/track_screen_state.dart';
import 'package:cadeaue_boutique/Ui/track_screen/bloc/track_screen_event.dart';
import 'package:cadeaue_boutique/Ui/track_screen/bloc/track_screen_bloc.dart';


import '../../injectoin.dart';


class TrackScreen extends StatefulWidget {

  @override
  _TrackScreenState createState() => _TrackScreenState();


}

class _TrackScreenState extends State<TrackScreen> {
  int current_step = 0;
  bool loading=true;
  int ticks=2;


  final _bloc = sl<TrackScreenBloc>();
  List<Data> trackHomeModelList;

  // List<Step> steps = [
  //   Step(
  //     title: Text('Step 1'),
  //     content: Text('Hello!'),
  //     isActive: true,
  //   ),
  //   Step(
  //     title: Text('Step 2'),
  //     content: Text('World!'),
  //     isActive: true,
  //   ),
  //   Step(
  //     title: Text('Step 3'),
  //     content: Text('Hello World!'),
  //     state: StepState.complete,
  //     isActive: true,
  //   ),
  // ];
  //
  // final List<TimelineModel> list = [
  //   TimelineModel(
  //     id: "1",
  //     description: "Test 1",
  //     title: "Test 1",
  //   ),
  //   TimelineModel(id: "2", description: "", title: "")
  // ];

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  @override
  void initState() {


    ticks=2;
    loading=true;

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage1: $message");
        _bloc.add(GetTracks());
        print("------------------: $message");
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );


   super.initState();

    _bloc.add(GetTracks());
  /*  if(mounted)
      getData();*/



  }

 /* Future<void> getData() async {
    var response= await widget.getTracksHome();
    if(response.statusCode==200){

      TrackHomeModel trackHomeModel=response.object;
      setState(() {


        trackHomeModelList=trackHomeModel.data;
        loading=false;
      });

      print("-----------------------");
    }
    else{
      trackHomeModelList=[];
      loading=false;
    }

  }*/

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context , TrackScreenState state) {
          return Scaffold(
              backgroundColor: Colors.white,
              body: Stack(
                children: [
                  Column(
                    children: [
                      baseAppBar(size, context),
                      SizedBox(
                        height: 20,
                      ),


                      Flexible(
                        child: ListView.builder(

                          itemCount: state.tracks.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {

                            var carIndex=0;
                            if(state.tracks[index].orderStatus=="new")
                              carIndex=0;
                            else if(state.tracks[index].orderStatus=="start")
                              carIndex=1;
                                else
                                  carIndex=2;
                            return  Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 12),
                              child: Container(
                                height: size.height * 0.3,
                                width: size.width * 0.9,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(1, 1),
                                        color: Colors.grey.withOpacity(0.6),
                                        blurRadius: 5,
                                        spreadRadius: 3,
                                      ),
                                    ]),

                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [


                                      Container(
                                        height: size.height * 0.06,
                                        width: size.width * 0.9,

                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                        /*    baseText(title: "",
                                                color: AppColor.darkYellow,
                                                size: 18.0),*/

                                            carIndex==2?
                                            Expanded(
                                              child: Container(

                                                child: Padding(
                                                  padding:  EdgeInsets.all(6),
                                                  child: SvgPicture.asset("assets/images/delivered.svg"),
                                                ),
                                              ),
                                            ):Container(),
                                          ],
                                        ),
                                      ),
                                      Container(

                                        height: size.height * 0.08,
                                        width: size.width * 0.9,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                baseText(title: "You",
                                                    size: 16.0,
                                                    color: AppColor.darkTextColor),
                                                baseText(title:state.tracks[index].createdAt.substring(0,10),
                                                    size: 12.0,
                                                    color: AppColor.textColor),
                                              ],
                                            ),
                                            Flexible(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  baseText(title: state.tracks[index].giftTo,
                                                      size: 16.0,
                                                      color: AppColor.darkTextColor),
                                                  baseText(title: state.tracks[index].deliveryDate,
                                                      size: 12.0,
                                                      color: AppColor.textColor),
                                                ],),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(

                                        height: size.height * 0.06,
                                        width: size.width * 0.9,
                                        child: //
                                        Row(
                                          children: <Widget>[
                                            tickHassan1(size: size,stepNumber: 0,carIndex: carIndex),

                                            line(size,0,carIndex),

                                            tickHassan1(size: size,stepNumber: 1,carIndex: carIndex),

                                            line(size , 1,carIndex),

                                            tickHassan1(size: size,stepNumber: 2,carIndex: carIndex),
/*
                                      line(size , false),

                                      tick4(size: size),*/
                                          ],
                                        ),
                                      ),
                                      Container(

                                        height: size.height * 0.1,

                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            baseText(title: "Order will be delivered",
                                                size: 16.0,
                                                color: AppColor.darkTextColor),
                                            SizedBox(height: 5,),
                                            Container(
                                              // margin: EdgeInsets.only(bottom: 80),
                                              height: 26,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    AppColor.darkYellow,
                                                    AppColor.lightYellow
                                                  ],
                                                  stops: [0.1, 0.96],
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    offset: Offset(1, 1),
                                                    color: Colors.grey.withOpacity(0.6),
                                                    blurRadius: 3,
                                                    spreadRadius: 1,
                                                  ),
                                                ],

                                                borderRadius: BorderRadius.circular(40),
                                              ),
                                              child: FlatButton(
                                                // splashColor: Colors.red,
                                                onPressed: () {
                                                },
                                                child: Text(
                                                  'Details',
                                                  style: TextStyle(
                                                    color: AppColor.textColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            );

                          },


                        ),
                      ),

                      state.isLoading ? Center(child: CircularProgressIndicator(
                        backgroundColor: AppColor.darkYellow,)) : Container(),

                      SizedBox(
                        height: 20,
                      ),

                    ],
                  ),
                ],
              )

          );
        } );
  }

  Widget tick(bool isChecked ,Size size ,  bool containIcon) {
    return containIcon?
    Container(
      width:size.width*0.10,
      height:size.width*0.10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.darkYellow,

      ),
      child: Padding(
        padding:  EdgeInsets.all(6),
        child: SvgPicture.asset("assets/images/13-car.svg"),
      ),
    ):
      isChecked
        ? Container(
      width:size.width*0.04,
      height:size.width*0.04,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.darkYellow,

      ),
    )
        : Container(
      width:size.width*0.04,
      height:size.width*0.04,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.darkTextColor,

      ),
    );
  }

  Widget tick1({Size size}) {
    return ticks > 0 ? tick(true ,size , false) : tick(false,size ,false);
  }
  Widget tickHassan1({Size size,int stepNumber,int carIndex}) {
    if(carIndex==stepNumber)
      return tick(true ,size , true);
    if(carIndex>stepNumber)
      return tick(true ,size , false);
    else   return tick(false ,size , false);

    return ticks == 0 ? tick(true ,size , true) : tick(false,size ,false);
  }

  Widget tickHassan2({Size size}) {
    return ticks == 1 ? tick(true ,size , true) : tick(false,size ,false);
  }

  Widget tickHassan3({Size size}) {
    return ticks == 2 ? tick(true ,size , true) : tick(false,size ,false);
  }

  Widget tick2({Size size}) {
    return ticks > 1 ? tick(true,size,false) : tick(false,size,false);
  }

  Widget tick3({Size size}) {
    return ticks > 2 ? tick(true,size,true) : tick(false,size,false);
  }

  Widget tick4({Size size}) {
    return ticks > 3 ? tick(true,size,false) : tick(false,size,false);
  }

  Widget spacer() {
    return Container(
      width: 5.0,
    );
  }

  Widget line(Size size , int numberSteps,int carIndex ) {
    bool isChecked=carIndex>=numberSteps;
    return Container(
       color: isChecked? AppColor.darkYellow:AppColor.darkTextColor,
      //  color: isChecked? AppColor.darkYellow:AppColor.darkYellow,
      height: 2.0,
      width: size.width * 0.32,
    );
  }
}

