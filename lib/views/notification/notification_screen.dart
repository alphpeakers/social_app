import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text('Notifcation'),
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Boopathi'),
                leading: CircleAvatar(),
                subtitle: Text('Hi recentely viewd ypur page'),
                trailing: Text('1 min ago'),
              );
            },
          )
        ],
      )),
    );
  }
}
