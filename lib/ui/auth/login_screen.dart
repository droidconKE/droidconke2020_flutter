import 'package:droidconke2020_flutter/blocs/auth_bloc.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final authBloc = Provider.of<AuthBloc>(context);

    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/Asset-1.png"),
          alignment: Alignment.bottomCenter,
        )),
        child: Column(
          children: <Widget>[
            DroidconAppBar(
              title: 'Login',
              isLoginScreen: true,
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    SizedBox(height: 50),
                    StreamBuilder<bool>(
                        stream: authBloc.loading,
                        builder: (context, snapshot) {
                          if (snapshot.hasData && snapshot.data)
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          return FlatButton(
                            padding: EdgeInsets.all(0),
                            child: Container(
                                width: 200,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      height: 40,
                                      width: 40,
                                      color: Colors.white,
                                      child: Container(
                                        height: 10,
                                        width: 10,
                                        child: Image.asset(
                                          "assets/images/google-signin.png",
                                          height: 10,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Signin With Google",
                                      style: Theme.of(context)
                                          .textTheme
                                          .body2
                                          .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Container(),
                                  ],
                                )),
                            onPressed: () async {
                              try {
                                await authBloc.signInWithGoogle();
                                Navigator.of(context).pop();
                              } catch (e) {
                                _scaffoldKey.currentState?.showSnackBar(
                                    SnackBar(content: Text(e.toString())));
                              }
                            },
                          );
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
