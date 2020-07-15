import 'package:flutter/material.dart';
import 'package:flutter_settings_app/model/settingsExemple.dart';
import 'package:flutter_settings_app/playStoreSettingsPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: width,
            height: height,
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset(
                    "assets/images/img3.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: width,
                    padding: EdgeInsets.all(20.0),
                    height: height * 1 / 3 - 20,
                    color: Colors.black.withOpacity(0.6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Acceuil",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.0),
                            ),
                            OutlineButton(
                              onPressed: () {},
                              child: Text(
                                "About",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Settings exemple application",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.all(0.0),
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0))),
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 20.0,
                                )),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "Saving data on disk",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.black.withOpacity(0.6),
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        width: width,
                        height: height * 2 / 3 + 10,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          child: ListView.builder(
                            itemCount:
                                settingsExampleList.settingsExample.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          PlayStoreSettingsPage()));
                                },
                                child: Container(
                                  width: width,
                                  margin: EdgeInsets.all(5.0),
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey[300],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  child: Stack(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          margin: EdgeInsets.all(20.0),
                                          color: Colors.blue,
                                          width: 200,
                                          height: double.infinity,
                                          child: Center(
                                            child: Text(
                                              settingsExampleList
                                                  .settingsExample[index].name,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          width: width * 1 / 3,
                                          margin: EdgeInsets.only(
                                              top: 10.0, bottom: 10, left: 5.0),
                                          child: Image.asset(
                                            settingsExampleList
                                                .settingsExample[index].image,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          width: 240,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            color: Colors.blueGrey[400],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20.0)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Nombre de parametre ${settingsExampleList.settingsExample[index].nbrOption.toString()}",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          )
          // Column(
          //   children: <Widget>[
          //     Text("data"),
          //     SizedBox(
          //       height: 100,
          //     ),
          //     Container(
          //       margin: EdgeInsets.all(10.0),
          //       width: width,
          //       height: 150,
          //       decoration: BoxDecoration(color: Colors.green,
          //       borderRadius: BorderRadius.all(Radius.circular(20.0))
          //       ),
          //       child: Stack(
          //         children: <Widget>[
          //           Center(
          //             child: Container(
          //               margin: EdgeInsets.all(20.0),
          //               color: Colors.blue,
          //               width: double.infinity,
          //               height: double.infinity,
          //             ),
          //           ),
          //           Align(
          //             alignment: Alignment.centerLeft,
          //             child: Container(
          //               width: width / 3,
          //               margin: EdgeInsets.only(top:10.0,bottom:10,left: 5.0),
          //               child: Image.asset(
          //                 "assets/images/img1.png",
          //                 fit: BoxFit.cover,
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     )
          //   ],
          // ),
          ),
    );
  }
}
