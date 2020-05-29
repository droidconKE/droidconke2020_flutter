import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:droidconke2020_flutter/ui/shared/afrikon.dart';
import 'package:flutter/material.dart';

class TwitterHandleCopy extends StatelessWidget {
  final String handle;

  const TwitterHandleCopy({
    Key key,
    @required this.handle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              "Twitter Handle",
              style: Theme.of(context)
                  .textTheme
                  .body1
                  .copyWith(color: Palette.purple),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  ClipboardManager.copyToClipBoard(handle).then((result) {
                    final snackBar = SnackBar(
                      content: Text('Twitter handle copied to clipboard'),
                      /*action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          // ClipboardManager.copyToClipBoard(null);
                        },
                      ),*/
                    );
                    Scaffold.of(context).showSnackBar(snackBar);
                  });
                },
                child: Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Palette.gray[50])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "$handle",
                        style: Theme.of(context)
                            .textTheme
                            .body2
                            .copyWith(color: Palette.green),
                      ),
                      Afrikon(
                        'copy-outline',
                        color: Theme.of(context).textTheme.body1.color,
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 2),
        Text(
          "Tap to copy handle",
          style: Theme.of(context).textTheme.caption.copyWith(
                fontStyle: FontStyle.italic,
              ),
        ),
      ],
    );
  }
}
