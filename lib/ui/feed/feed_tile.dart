import 'package:flutter/material.dart';

class FeedTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: <Widget>[
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non "
              "quis exercitationem culpa nesciunt nihil aut nostrum explicabo "
              "reprehenderit optio amet ab temporibus asperiores quasi cupiditate. "
              "Voluptatum ducimus voluptates voluptas?",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 10),
            Container(
              height: 139,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://techweez.com/wp-content/uploads/2019/08/DroidconKE-2019-1365x1024.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.access_time,
                      size: Theme.of(context).textTheme.caption.fontSize,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '10:24',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                //Afrikon("share"), //FIXME: Afrocon doesn't work
                Icon(Icons.reply),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
