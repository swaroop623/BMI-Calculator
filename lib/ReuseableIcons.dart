import 'package:flutter/material.dart';
import 'constants.dart';

class GenderIcons extends StatelessWidget {
  final Icon genderIcon;
  final String data;
  GenderIcons({this.genderIcon, this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        genderIcon,
        SizedBox(
          height: 15.0,
        ),
        Text(
          data,
          style: klabelsize,
        ),
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData iconsdata;
  final Function onPress;
  RoundIconButton({this.iconsdata, this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: CircleBorder(),
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(iconsdata),
    );
  }
}
