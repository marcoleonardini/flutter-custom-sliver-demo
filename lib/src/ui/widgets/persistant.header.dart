import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';

class PersistantHeader implements SliverPersistentHeaderDelegate {
  PersistantHeader({this.maxExtent, this.minExtent});

  final double maxExtent;
  final double minExtent;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Stack(
        children: <Widget>[
          ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black87,
                ],
              ).createShader(
                Rect.fromLTRB(0, -140, rect.width, rect.height - 20),
              );
            },
            blendMode: BlendMode.darken,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('images/river.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
              opacity: calculateOpacity(shrinkOffset),
              child: Container(
                padding: EdgeInsets.all(24.0),
                height: maxExtent / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Yosemite National Park',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.90),
                          fontSize: 28.0),
                    ),
                    Text(
                      'California, USA',
                      style: TextStyle(color: Colors.white70, fontSize: 20.0),
                    ),
                    Text(
                      'sjdins iuhfwir eiurghie ugiuaerh iaru hg iarhia wifh iu iw    uri  h iu uiruir ui uiraa uiiuuife ih',
                      style: TextStyle(color: Colors.white70, fontSize: 18.0),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.greenAccent,
                          size: 22.0,
                        ),
                        RichText(
                          text: TextSpan(
                              text: '  96% positive reviews ',
                              style: TextStyle(color: Colors.greenAccent),
                              children: [
                                TextSpan(
                                  text: ' - 132 reviews',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.0,
                                  ),
                                )
                              ]),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white70,
                        ),
                        Text(
                          'Swipe up for more',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  double calculateOpacity(double shrinkOffset) {
    return 1.0 - max(0.0, shrinkOffset) / (maxExtent - minExtent);
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }

  @override
  // TODO: implement snapConfiguration
  FloatingHeaderSnapConfiguration get snapConfiguration => null;

  @override
  // TODO: implement stretchConfiguration
  OverScrollHeaderStretchConfiguration get stretchConfiguration => null;
}
