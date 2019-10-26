import 'package:flutter/material.dart';
import 'package:flutter_profile/animation/animation.dart';
import 'package:flutter_profile/animation/type_writer.dart';
import 'package:flutter_profile/mobx/central_state.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_profile/ui/widget/bottom_page_text.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          FlareAnimation(
            name: 'home',
            action: 'Demo Mode',
            fit: BoxFit.fill,
          ),
      Container(
        margin: EdgeInsets.only(bottom: 200),

        width: MediaQuery.of(context).size.width-50,

        child: TyperAnimatedTextKit(
          duration: Duration(milliseconds: 4000),
            isRepeatingAnimation: false,
            onTap: () {
              print("Tap Event");
            },
            text: [
             "I was born in Delhi and currently living in Faridabad.",
            ],
            textStyle: TextStyle(fontSize: 30.0,color: Colors.white70, fontFamily: "BalooBhai"),
            textAlign: TextAlign.center,
            alignment: AlignmentDirectional.topStart // or Alignment.topLeft
        ),
      ),BottomPageText("Home"),
        ],
      ),
    );
  }
}
