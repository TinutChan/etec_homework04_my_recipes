import 'package:flutter/material.dart';

class RecipesItems extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subtile;
  final String? trailing;
  const RecipesItems(
      {Key? key, this.image, this.title, this.subtile, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 20,
          contentPadding: EdgeInsets.all(0),
          leading: Container(
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('${image}'), fit: BoxFit.cover))),
          title: Text(
            '${title}',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text('${subtile}', style: TextStyle(fontSize: 15)),
          trailing: Padding(
            padding: EdgeInsets.only(bottom: 35, right: 10),
            child: Text(
              '${trailing}',
              style: TextStyle(fontSize: 15),
            ),
          ),
          onTap: () {},
        ),
        const Divider(
          height: 10,
          thickness: 1,
          indent: 120,
        )
      ],
    );
  }
}
