import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.75),
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Text("Hello, World!")
                .textColor(Colors.white)
                .fontWeight(FontWeight.bold)
                .padding(horizontal: 30, vertical: 15)),
      ],
    );
  }
}

main() async {
  return buildApp(appHome: NewView().center());
}
