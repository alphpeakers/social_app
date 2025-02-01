import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Profile'),
            SizedBox(
              height: 50,
            ),
            Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 600,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [Text('2k'), Text('340')],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [Text('Followers'), Text('Following')],
                        ),
                        SizedBox(height: 10),
                        Text('Anastasia',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OutlinedButton(
                                onPressed: () {}, child: Text('FOllow')),
                            OutlinedButton(
                                onPressed: () {}, child: Text('Chat'))
                          ],
                        ),
                        Text('All'),
                        //posts

                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          title: Text('Boopathi'),
                          subtitle: Text('Hi Every one'),
                        ),
                        // ListView.builder(
                        //   itemBuilder: (context, index) {
                        //     return Container();
                        //   },
                        // )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -36,
                  child: CircleAvatar(
                    radius: 45,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
