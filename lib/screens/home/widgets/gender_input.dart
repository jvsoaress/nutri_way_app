import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenderInput extends StatelessWidget {
  const GenderInput({
    Key key,
    @required this.asset,
    @required this.title,
    @required this.selected,
    @required this.switchGender,
  }) : super(key: key);

  final String asset;
  final String title;
  final bool selected;
  final Function switchGender;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).iconTheme.color;

    return GestureDetector(
      onTap: switchGender,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10),
        elevation: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SvgPicture.asset(
              asset,
              color: selected ? color : color.withOpacity(.3),
              width: 60,
              height: 60,
            ),
            Text(
              title,
              style: TextStyle(
                color: selected ? color : color.withOpacity(.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
