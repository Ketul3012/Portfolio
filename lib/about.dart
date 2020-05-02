import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class About extends StatelessWidget {
  List<String> _projects = <String>[
    "Andriod:PhotoApp",
    "Andriod:TodoList",
    "PythonML:StyleYourImage",
    "PythonML:CatVsDog Classifier"
  ];
  List<String> _projectsLinks = <String>[
    "https://github.com/ketul007/PhotoApp",
    "https://github.com/ketul007/ToDoList",
    "https://github.com/ketul007/StyleYourImage",
    "https://github.com/ketul007/Cat_vs_dog_keras_binary_classification"
  ];

  void _loadUrl(String url) async {}

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Container(
        color: Colors.blueGrey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 26.0, right: 20.0, top: 20.0),
                child: Text(
                  "About Us",
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 26.0, right: 20.0, top: 20.0),
                child: Text(
                  "WHAT ARE WE?",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 26.0, right: 20.0, top: 20.0),
                child: Text(
                  "We are learners with excitement to learn every achievable things we can, and produce products with greater prodcutivity and efficiency.",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 26.0, right: 20.0, top: 20.0),
                child: Text(
                  "WHAT DRIVE US?",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 26.0, right: 20.0, top: 20.0),
                child: Text(
                  "Excitement to learn new things, Excitement to try new technology, Excitement to achieve new milestones, Excitement to procure excellence.",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 26.0, right: 20.0, top: 20.0),
                child: Text(
                  "Some Projects we have done in past",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: MediaQuery.of(context).size.height * 0.41,
                padding: EdgeInsets.all(10.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(5.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Center(
                        child: FlatButton(
                          child: Card(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('images/github.png'),
                                      radius: 100.0),
                                  margin: EdgeInsets.all(5.0),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Text(
                                    _projects[index],
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            color: Colors.white,
                          ),
                          onPressed: () async {
                            String url = _projectsLinks[index];
                            if (await canLaunch(url)) {
                              await launch(url,
                                  forceSafariVC: true,
                                  forceWebView: true,
                                  enableJavaScript: true);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                        ),
                      ),
                    );
                  },
                  itemCount: _projects.length,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    /*Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Card(
                            color: Colors.transparent,
                            elevation: 40.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 80.0,
                                  backgroundImage:
                                      AssetImage('images/puppy.jpg'),
                                  backgroundColor: Colors.transparent,
                                ),
                              ],
                            )),
                        Container(
                          padding: EdgeInsets.only(top: 10.0),
                          margin: EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            '''Dhaval Patel
(Andriod Developer)''',
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    */
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Card(
                            color: Colors.transparent,
                            elevation: 40.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 80.0,
                                  backgroundImage:
                                      AssetImage('images/mine.jpg'),
                                  backgroundColor: Colors.transparent,
                                ),
                              ],
                            )),
                        Container(
                          padding: EdgeInsets.only(top: 10.0),
                          margin: EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            '''Ketul Patel
(Developer)''',
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
