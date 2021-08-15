import 'package:flutter/material.dart';

class BulletListTile extends StatelessWidget {
  const BulletListTile(
      {Key? key,
      required this.index,
      required this.listLength,
       this.title= 'Title',
       this.subTitle='subtitle',
       this.text='',
      this.color = Colors.purpleAccent,
      this.icon = Icons.date_range_outlined})
      : super(key: key);
  final int index;
  final int listLength;
  final String title, subTitle, text;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          index.isEven
              ? customBoxSize(
                  width: (screenWidth / 2) - 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                      ),
                      Text(
                        subTitle,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(children: <Widget>[
                        Icon(icon, color: Colors.grey[600]),
                        Text(
                          text,
                          maxLines: 1,
                          style: TextStyle(color: Colors.grey[600]),
                        )
                      ])
                    ],
                  ),
                )
              : SizedBox(
                  width: (screenWidth / 2) - 50,
                ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Column(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                ),
                index == listLength - 1
                    ? const SizedBox()
                    : Container(height: 100, width: 1, color: color)
              ],
            ),
          ),
          index.isOdd
              ? customBoxSize(
                  width: (screenWidth / 2) - 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                      ),
                      Text(
                        subTitle,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(children: <Widget>[
                        Icon(icon, color: Colors.grey[600]),
                        Text(
                          text,
                          maxLines: 1,
                          style: TextStyle(color: Colors.grey[600]),
                        )
                      ])
                    ],
                  ),
                )
              : SizedBox(
                  width: (screenWidth / 2) - 50,
                ),
        ],
      ),
    );
  }

  Widget customBoxSize({required Widget child, required double width}) =>
      SizedBox(
        width: width,
        child: child,
      );
}
