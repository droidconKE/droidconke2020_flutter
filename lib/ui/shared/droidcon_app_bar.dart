import 'package:droidconke2020_flutter/blocs/auth/auth_bloc.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/auth/login_screen.dart';
import 'package:droidconke2020_flutter/ui/feedback/event_feedback_screen.dart';
import 'package:droidconke2020_flutter/ui/shared/afrikon.dart';
import 'package:droidconke2020_flutter/ui/shared/app_bar_feedback_button.dart';
import 'package:droidconke2020_flutter/ui/shared/countdown_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class DroidconAppBar extends StatelessWidget {
  final String title;
  final String logoHeroTag;
  final Widget trailing;
  final bool isHome;
  final bool isBeforeEvent;
  final bool isLoginScreen;

  const DroidconAppBar({
    Key key,
    this.title,
    this.isHome = false,
    this.isBeforeEvent = true,
    this.isLoginScreen = false,
    this.trailing,
    this.logoHeroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 20 + MediaQuery.of(context).padding.top,
          right: 20,
          left: 20,
          bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          if (Navigator.of(context).canPop())
            InkWell(
              child: Afrikon(
                'left',
                color: Theme.of(context).textTheme.bodyText1.color,
              ),
              onTap: () => Navigator.of(context).pop(),
            ),
          if (!isLoginScreen)
            InkWell(
              child: (logoHeroTag == null)
                  ? Image.asset(
                      'assets/images/logo.png',
                      width: 27,
                      height: 27,
                    )
                  : Hero(
                      tag: logoHeroTag,
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 27,
                        height: 27,
                      ),
                    ),
              onTap: () {
                while (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
                Provider.of<CupertinoTabController>(context, listen: false)
                    .index = 0;
              },
            ),
          if (title != null)
            Text(
              title,
              style: Theme.of(context).textTheme.title,
            ),
          if (isHome && isBeforeEvent) CountdownTimerWidget(),
          if (isHome && !isBeforeEvent)
            AppBarFeedbackButton(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return EventFeedbackScreen();
                }));
              },
            ),
          if (!isLoginScreen && trailing == null)
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                if (state is AuthStateAuthenticated) {
                  return GestureDetector(
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        Afrikon(
                          'man',
                          color: Palette.purple,
                          height: 20,
                        )
                      ],
                    ),
                    onTap: () => BlocProvider.of<AuthBloc>(context)
                        .add(AuthEventLogout()),
                  );
                }
                return GestureDetector(
                  // borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      Afrikon(
                        'locked',
                        color: Palette.green,
                        height: 15,
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                );
              },
            ),
          if (isLoginScreen) Container(),
          if (trailing != null) trailing,
        ],
      ),
    );
  }
}
