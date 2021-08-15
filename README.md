# Bullet ListView

Bullet Listview packages lets you show you data in beautiful list view.

## Installation

1. Add the latest version of package to your pubspec.yaml (and run `dart pub get`);
```yaml
dependencies
   bullet_list: ^0.0.1
```
2- Import the package and use it in your Flutter App.
```dart
import 'package:bullet_list/bullet_list.dart';
```

## Example
There are some properties that you can modify:

- List 
- Color
- IconData

<hr>
<table>
<tr>
<td>

```dart
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
```
</td>
<td>
<a href="https://ibb.co/HTJhqCX"><img src="https://i.ibb.co/HTJhqCX/Screenshot-2021-08-16-003729.png" alt="Screenshot-2021-08-16-003729" border="0"></a>
</td>
</tr>
</table>

## Next Goals
- [x] Add onTap for functions
Now, you can specify the onTap and specify a function

- [x] Change font and color style for text.
Change color by specifying 'textcolor' and 'subtitlecolor' properties

- [] Add more layouts to the package.
