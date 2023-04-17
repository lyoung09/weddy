import 'package:flutter/material.dart';

import '../../../../../resources/Colors.dart';

class CustomCheckTile extends StatefulWidget {
  final bool value;
  const CustomCheckTile({super.key, required this.value});

  @override
  State<CustomCheckTile> createState() => CustomCheckTileState();
}

class CustomCheckTileState extends State<CustomCheckTile> {
  bool? select;

  @override
  void initState() {
    select = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark().copyWith(
        unselectedWidgetColor: ColorItems.secondarySpanishGray,
      ),
      child: Checkbox(
        activeColor: ColorItems.primary,
        value: select,
        onChanged: (bool? value) {
          setState(() => select = value!);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
    );
  }
}
