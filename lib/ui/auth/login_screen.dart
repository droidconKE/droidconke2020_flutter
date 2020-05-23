import 'package:droidconke2020_flutter/blocs/auth/auth_bloc.dart';
import 'package:droidconke2020_flutter/ui/auth/bloc/login_bloc.dart';
import 'package:droidconke2020_flutter/ui/shared/droidcon_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
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
                    BlocConsumer<LoginBloc, LoginState>(
                      listener: (context, state) {
                        if (state is LoginStateSuccessful) {
                          BlocProvider.of<AuthBloc>(context)
                              .add(AuthEventLogIn(state.user));
                          Navigator.of(context).pop();
                        }
                        if (state is LoginStateFailed) {
                          _scaffoldKey.currentState?.showSnackBar(SnackBar(
                              content: Text(state.error.toString())));
                        }
                      },
                      builder: (context, state) {
                        if (state is LoginStateLoading)
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<LoginBloc>(context)
                                .add(LoginEventWithGoogle());
                          },
                        );
                      },
                    ),
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
