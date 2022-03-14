import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'Calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var top = 0.0;
  var _textColor = Color(0xff0d253f);
  var _darkGreen = Color(0xff007b83);
  var _lightRed = Color(0xffe46472);
  var _blue = Color(0xff6488e4);
  var _primary = Color(0xfff9be7c);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                    backgroundColor: Colors.teal,
                    leading: ImageIcon(
                      
                      AssetImage(
                        "assets/images/left.webp",
                      ),
                      color: _textColor,
                      size: 50,
                    ),
                    actions: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: _textColor,
                            size: 40,
                          ))
                    ],
                    pinned: true,
                
                    stretch: true,
                    expandedHeight: 230,
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(48.0),
                      
                      child: Container(),
                    ),
                    flexibleSpace: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return FlexibleSpaceBar(
                          
                            stretchModes: <StretchMode>[
                              StretchMode.zoomBackground
                            ],
                            centerTitle: true,
                            title: Container(
                              
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 50,
                                  ),
                                  CircularPercentIndicator(
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: _lightRed,
                                    backgroundColor: Colors.transparent,
                                    lineWidth: 4,
                                    radius: 35,
                                    percent: 0.75,
                                    center: CircleAvatar(
                                      
                                      radius: 28,
                                      backgroundImage: AssetImage(
                                          "assets/images/images.jpeg"),
                                          
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Text('John Doe',
                                            style: TextStyle(
                                                color: Color(0xff0d253f))),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Project Manager',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff6c6357),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            background: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 248, 181, 105),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(44),
                                      bottomRight: Radius.circular(44))),
                            ));
                      },
                    )),
              )
            ];
          },
          body: SafeArea(
            child: Builder(
              builder: (BuildContext context) {
                return CustomScrollView(
                  slivers: [
                    SliverOverlapInjector(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context),
                    ),
                    SliverList(
                        delegate: SliverChildListDelegate([
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'MyTasks',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: _textColor),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(top: 13),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: _darkGreen,
                                borderRadius: BorderRadius.circular(46)),
                            child: IconButton(
                              icon: Icon(
                                Icons.calendar_today_outlined,
                                size: 36,
                              ),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => StartPage()));
                              },
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          child: Icon(
                            Icons.access_time_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        title: Text('To Do'),
                        subtitle: Text('5 Tasks now - 1  started'),
                      ),
                      ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          child: Image(
                            image: AssetImage(
                              "assets/images/images.png",
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        title: Text('In Progress'),
                        subtitle: Text('1 Tasks now - 1  started'),
                      ),
                      ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 30,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        title: Text('To Do'),
                        subtitle: Text('18 Tasks now - 18  Complated'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 40),
                        child: Text(
                          'Active Projects',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                                color: _darkGreen,
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 30.0, top: 30),
                                  child: CircularPercentIndicator(
                                    circularStrokeCap: CircularStrokeCap.round,
                                    radius: 50,
                                    progressColor: Colors.white,
                                    percent: 0.25,
                                    lineWidth: 7,
                                    backgroundColor:
                                        Colors.white.withOpacity(0.2),
                                    center: Text(
                                      '25%',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Text(
                                    'MaterialApp',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Text(
                                    '9 hours progress',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15,
                                        height: 1.5),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(24)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 28.0, top: 28),
                                  child: CircularPercentIndicator(
                                    circularStrokeCap: CircularStrokeCap.round,
                                    radius: 50,
                                    progressColor: Colors.white,
                                    percent: 0.75,
                                    lineWidth: 7,
                                    backgroundColor:
                                        Colors.white.withOpacity(0.2),
                                    center: Text(
                                      '75%',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Text(
                                    'SupportApp',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Text(
                                    '40 hours progress',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15,
                                        height: 1.5),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 30.0, top: 30),
                                  child: CircularPercentIndicator(
                                    circularStrokeCap: CircularStrokeCap.round,
                                    radius: 50,
                                    progressColor: Colors.white,
                                    percent: 0.40,
                                    lineWidth: 7,
                                    backgroundColor:
                                        Colors.white.withOpacity(0.2),
                                    center: Text(
                                      '40%',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Text(
                                    'MaterialApp',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Text(
                                    '9 hours progress',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15,
                                        height: 1.5),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 170,
                            height: 220,
                            decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(24)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 28.0, top: 28),
                                  child: CircularPercentIndicator(
                                    circularStrokeCap: CircularStrokeCap.round,
                                    radius: 50,
                                    progressColor: Colors.white,
                                    percent: 0.64,
                                    lineWidth: 7,
                                    backgroundColor:
                                        Colors.white.withOpacity(0.2),
                                    center: Text(
                                      '64%',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Text(
                                    'SupportApp',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Text(
                                    '40 hours progress',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15,
                                        height: 1.5),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ])),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
