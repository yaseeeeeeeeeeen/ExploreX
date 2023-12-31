import 'package:flutter/material.dart';
import 'package:trip_planner/screens/loging_signup/transition.dart';

// import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:trip_planner/screens/pages/bucket_home.dart';
import 'package:trip_planner/screens/trip_adding/add_trip1.dart';
import 'package:trip_planner/widgets/ongoing_build.dart';
import 'package:trip_planner/screens/pages/botton_nav.dart';
import 'package:trip_planner/widgets/drawer.dart';
import 'package:trip_planner/widgets/titles.dart';
import 'package:trip_planner/widgets/upcoming_build.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  Home({super.key, this.UserInfo, this.Tripdata});
  final Map<String, dynamic>? UserInfo;
  Map<String, dynamic>? Tripdata;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double devicewidth = MediaQuery.sizeOf(context).width;
    return SafeArea(
        child: Scaffold(
            drawer: DrawerWid(),
            key: scaffoldKey,
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(SizeTransitions(AddTrip1(
                    UserInfo: widget.UserInfo,
                  )));
                },
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.add,
                  size: 30,
                )),
            body: SafeArea(
                child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TitlesWid(Title: 'Ongoing Trip'),
                                Container(
                                    height: 250,
                                    child:
                                        OnGoingWid(UserInfo: widget.UserInfo)),
                                TitlesWid(Title: 'Upcoming Trips'),
                                Container(
                                    height: 200,
                                    child: UpcomingTripWid(
                                        UserInfo: widget.UserInfo)),
                                InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(builder: (context) {
                                        return BottomNavBar(
                                          pagenumber: 1,
                                          UserDetails: widget.UserInfo,
                                        );
                                      }));
                                    },
                                    child:
                                        BucketFHome(UserInfo: widget.UserInfo)),
                                SizedBox(
                                  height: 10,
                                )
                              ]))
                    ])))));
    // );
  }
}
