import 'package:bullet_list/src/bulletlistitem_model.dart';
import 'package:bullet_list/src/list_tile.dart';
import 'package:flutter/material.dart';

class BulletListView extends StatefulWidget {
  const BulletListView(
      {Key? key, required this.list, this.color = Colors.purpleAccent,this.icon})
      : super(key: key);
  final List<BulletListItemModel> list;
  final Color color;
  final IconData? icon;

  @override
  _BulletListViewState createState() => _BulletListViewState();
}

class _BulletListViewState extends State<BulletListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.list.length,
      itemBuilder: (context, i) {
        return BulletListTile(
          index: i,
          listLength: widget.list.length,
          title: widget.list[i].title,
          subTitle: widget.list[i].subTitle,
          text: widget.list[i].text,
          color: widget.color,
          icon: widget.icon!,
        );
      },
    );
  }
}

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BulletListView(list: list,
    color: Color(0xFF12a4d9),
    icon: Icons.date_range_outlined,);
  }
}
List<BulletListItemModel> list=[
  BulletListItemModel(title: 'Android developer', subTitle: '2 years', text: '2014-2016'),
  BulletListItemModel(title: 'Web developer', subTitle: '1 years', text: '2016-2017'),
  BulletListItemModel(title: 'React native developer', subTitle: '1 years', text: '2018-2019'),
  BulletListItemModel(title: 'Flutter developer', subTitle: '2+ years', text: '2019-2021'),
];