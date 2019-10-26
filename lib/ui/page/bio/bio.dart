import 'dart:async';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_profile/animation/animation.dart';
import 'package:flutter_profile/mobx/central_state.dart';
import 'package:flutter_profile/ui/page/bio/about_page.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import 'hobbies_page.dart';
import 'other_page.dart';

class Bio extends StatefulWidget {
  @override
  _BioState createState() => _BioState();
}

class _BioState extends State<Bio> {
  void smileTeddy() {
    centralstate.teddyState = 'success';
    Future.delayed(Duration(milliseconds: 3000), () {
      centralstate.teddyState = 'idle';
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    smileTeddy();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          WaveWidget(
            config: CustomConfig(
              gradients: [
                [Colors.red, Color(0xEEF44336)],
                [Colors.red[800], Color(0x77E57373)],
                [Colors.orange, Color(0x66FF9800)],
                [
                  Color(0xff8E24AA),
                  Color(0xff404366),
                ]
              ],
              durations: [35000, 19440, 10800, 6000],
              heightPercentages: [0.20, 0.23, 0.25, 0.30],
              blur: MaskFilter.blur(BlurStyle.solid, 10),
              gradientBegin: Alignment.bottomLeft,
              gradientEnd: Alignment.topRight,
            ),
            waveAmplitude: 0,
            backgroundColor: Colors.white10,
            size: Size(
              double.infinity,
              double.infinity,
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 50),
                  alignment: Alignment.bottomCenter,
                  height: 250,
                  child: Observer(
                    builder: (_) {
                      return FlareAnimation(
                        name: "teddy",
                        action: centralstate.teddyState,
                      );
                    },
                  )),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
            child: About(),
          )
        ],
      ),
    ));
  }
}
