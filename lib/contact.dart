// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _subject = TextEditingController();
  final _details = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = 0.5;

    if (!kIsWeb) {
      width = MediaQuery.of(context).size.width * 0.5;
    } else {
      width = MediaQuery.of(context).size.width * 0.3;
    }
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.5, 1.0],
                colors: [Colors.black, Colors.blueGrey, Colors.black])),
      ),
      Center(
        child: Wrap(children: <Widget>[
          Card(
            elevation: 40.0,
            child: Form(
              key: _formKey,
              child: Container(
                width: width,
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter Email Address',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please Enter email';
                          } else if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                            return 'Please enter valid email';
                          }
                          return null;
                        },
                        maxLines: 1,
                        controller: _email,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter Subject',
                        ),
                        maxLines: 1,
                        controller: _subject,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Project Details',
                        ),
                        controller: _details,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10.0, right: 8.0, top: 70.0, bottom: 20.0),
                      child: RaisedButton(
                        color: Colors.blueGrey,
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            var emial = _email.value.text;
                            var subj = _subject.value.text;
                            var body = _details.value.text;

                            var mail = 'mailto:$emial?subject=$subj&body=$body';
                            if (await canLaunch(mail)) {
                              await launch(mail);
                            } else {
                              _email.clear();
                              _subject.clear();
                              _details.clear();
                            }
                          } else {
                            _email.clear();
                            _subject.clear();
                            _details.clear();
                          }
                        },
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    ]);
  }
}
