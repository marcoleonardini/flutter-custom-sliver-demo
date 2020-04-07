import 'package:flutter/material.dart';
import 'package:flutter_travel_app_flutter/src/ui/widgets/persistant.header.dart';

String desc =
    'Yosemite is internationally for its granite cliffs, waterfalls, clean streams, giant sequoa groves, lakes, mountains, meadowns, glaciers and biological diversity';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: PersistantHeader(
              maxExtent: MediaQuery.of(context).size.height,
              minExtent: 250,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Basic Info',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Yosemite',
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'California, USA',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.map,
                        color: Colors.greenAccent,
                        size: 32.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    desc,
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(8.0),
                          color: Colors.grey.withOpacity(0.10),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.check_circle_outline,
                                size: 16.0,
                                color: Colors.greenAccent,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: ' 96% ',
                                  style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Positive Reviews',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                      Spacer(),
                      RichText(
                        text: TextSpan(
                          text: 'Check ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11.0,
                          ),
                          children: [
                            TextSpan(
                              text: 'all ',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(
                              text: '132 ',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'reviews.',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 16.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Activities in the park',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.grey[100],
                            ),
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.directions_bike),
                          ),
                          Text('Climbing')
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.grey[100],
                            ),
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.directions_bike),
                          ),
                          Text('Climbing')
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.grey[100],
                            ),
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.directions_bike),
                          ),
                          Text('Climbing')
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.grey[100],
                            ),
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.directions_bike),
                          ),
                          Text('Climbing')
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Fees & Costs',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    color: Colors.grey[200],
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Anual Pass',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'for 12 months from the date of pursache',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text('\$70'),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey[200],
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Anual Pass',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'for 12 months from the date of pursache',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text('\$70'),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey[200],
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Anual Pass',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'for 12 months from the date of pursache',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text('\$70'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
          // SliverList(

          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return ListTile(title: Text("Sliver List item: $index"));
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
