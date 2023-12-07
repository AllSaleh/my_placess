import 'package:flutter/material.dart';

class DetilsListTile extends StatelessWidget {
  const DetilsListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text(
        'Jeddah Waterfront',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(top: 5),
        child: Text('Beach pavilion',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
