import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/shared/afrikon.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class EventFeedbackScreen extends StatelessWidget {
  static final routeName = 'event-feedback';
  final GlobalKey<FormBuilderState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Asset-1.png'),
                        alignment: Alignment.bottomCenter,
                        fit: BoxFit.contain,
                        repeat: ImageRepeat.repeatX)),
                child: Column(
                  children: <Widget>[
                    DroidconAppBar(),
                    Text(
                      'Feedback',
                      style: Theme.of(context).textTheme.title,
                    ),
                  ],
                ),
              ),
              FormBuilder(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Kindly leave your honest feedback to help '
                        'us make it even better. Cheers : )',
                      ),
                      SizedBox(height: 20),
                      FormBuilderTextField(
                        name: 'feedback',
                        decoration: InputDecoration(
                          hintText: 'Type Here',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        maxLines: 4,
                      ),
                      SizedBox(height: 30),
                      Text('Rating:'),
                      SizedBox(height: 20),
                      FormBuilderRating(
                        name: 'rating',
                        initialValue: 1,
                        max: 5,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                      SizedBox(height: 50),
                      FlatButton(
                        color: Palette.purple,
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Submit Feedback',
                              style:
                                  Theme.of(context).textTheme.subhead.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200,
                                      ),
                            ),
                            SizedBox(width: 20),
                            Afrikon(
                              'send',
                              color: Colors.white,
                              height: 15,
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
