import 'package:flutter/material.dart';
import 'package:flutter_travel_app_flutter/src/ui/widgets/persistant.header.dart';

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
              minExtent: 150,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(title: Text("Sliver List item: $index"));
              },
            ),
          )
        ],
      ),
    );
  }
}
