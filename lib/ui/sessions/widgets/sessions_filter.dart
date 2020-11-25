import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/shared/afrikon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';

class SessionsFilter extends StatelessWidget {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Material(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * .9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: SafeArea(
              child: FormBuilder(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Afrikon(
                              'filter-outline',
                              color: Palette.green,
                              height: 16,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Filter',
                              style: GoogleFonts.robotoSlab(
                                fontSize: 16,
                                color: Palette.green,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          child: Text(
                            'CANCEL',
                            style: GoogleFonts.robotoSlab(
                                fontSize: 12,
                                color: Palette.gray,
                                fontWeight: FontWeight.w300),
                          ),
                          onTap: () => Navigator.of(context).pop(),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Level',
                          style: GoogleFonts.robotoSlab(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        FormBuilderFilterChip(
                          name: 'level',
                          options: ['Beginner', 'Intermediate', 'Expert']
                              .map((v) => FormBuilderFieldOption(
                                    value: v,
                                    child: Text(v),
                                  ))
                              .toList(),
                          spacing: 10,
                          selectedColor: Palette.purple[200],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Topic',
                          style: GoogleFonts.robotoSlab(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        FormBuilderFilterChip(
                          name: 'topic',
                          options: [
                            'UI/UI Design',
                            'Backend',
                            'APIs',
                            'State Management',
                            'Flutter'
                          ]
                              .map((v) => FormBuilderFieldOption(
                                    value: v,
                                    child: Text(v),
                                  ))
                              .toList(),
                          spacing: 10,
                          selectedColor: Palette.purple[200],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Rooms',
                          style: GoogleFonts.robotoSlab(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        FormBuilderFilterChip(
                          name: 'rooms',
                          options: ['Room 1', 'Room 2', 'Room 3']
                              .map((v) => FormBuilderFieldOption(
                                    value: v,
                                    child: Text(v),
                                  ))
                              .toList(),
                          spacing: 10,
                          selectedColor: Palette.purple[200],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Session Type',
                          style: GoogleFonts.robotoSlab(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        FormBuilderFilterChip(
                          name: 'level',
                          options: [
                            'Keynote',
                            'Codelab',
                            'Session',
                            'Lighning Talk',
                            'Panel Discussion'
                          ]
                              .map((v) => FormBuilderFieldOption(
                                    value: v,
                                    child: Text(v),
                                  ))
                              .toList(),
                          spacing: 10,
                          selectedColor: Palette.purple[200],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        //TODO: Filter sessions
                      },
                      child: Container(
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        height: 40,
                        child: Text(
                          'Filter',
                          style: GoogleFonts.robotoSlab(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
