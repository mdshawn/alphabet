import 'package:alphabet/box.dart';
import 'package:alphabet/utils/colors.dart';
import 'package:alphabet/utils/letters.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> colors = ColorHolder.mycolors;
    List<String> text = AlphabetHolder.myAlphabets;

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: [
              for (var i = 0; i < text.length; i++)
                Box(
                  color: colors[i % colors.length],
                  text: text[i],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
