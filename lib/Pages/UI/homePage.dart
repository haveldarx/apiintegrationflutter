import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:interview2/api/auth_cred.dart';
import 'package:interview2/api/user_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var data;
  Auth_cred auth_cred = Auth_cred();
  // User? user;
  Data? Udata;
  @override
  void initState() {
    super.initState();
    parseData();
  }

  parseData() async {
    data = await auth_cred.getProfileDetails();
    setState(() {});
    Udata = Data.fromJson(json.decode(data));
    //  print(Udata!.name);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromRGBO(16, 93, 56, 1),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'User Name:',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    Text(
                      '${Udata!.name}',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Father name:',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    Text(
                      '${Udata!.fatName}',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Mother Name:',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    Text(
                      '${Udata!.motName}',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Standard:',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    Text(
                      '${Udata!.standard}',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Section:',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    Text(
                      '${Udata!.section}',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Father mob:',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    Text(
                      '${Udata!.fatMob}',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
