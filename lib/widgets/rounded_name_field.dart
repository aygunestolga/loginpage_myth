import 'package:flutter/material.dart';
import 'package:loginpage_mythgame/widgets/widgets.dart';

import '../constants.dart';

class RoundedNameField extends StatelessWidget {
  const RoundedNameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            icon: Icon(
              Icons.abc,
              color: kPrimaryColor,
            ),
            hintText: "Name",
            hintStyle: const TextStyle(fontFamily: 'OpenSans'),
            border: InputBorder.none
        ),
      ),
    );
  }
}
