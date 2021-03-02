import 'package:flutter/material.dart';
import 'package:portfolio/MyHomePage.dart';
import 'package:portfolio/skills.dart';

var colour = Colors.purple;

class page2 extends StatefulWidget {
  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          for (var i in l) i,
          Container(
            child: Column(
           mainAxisSize: MainAxisSize.min,
              children: [
          MouseRegion(
              onExit: (k) {
                setState(() {
                  colour = Colors.purple;
                });
              },
              onHover: (k) {
                setState(() {
                  colour = Colors.teal;
                });
              },
              child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: colour),
                  child: Text("MySkills",
                      style: TextStyle(fontSize: 30, color: Colors.white)))),
          Container(
            
            height: 400,
            //clipBehavior: Clip.hardEdge,
             // color: Colors.blue,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20) ,
                    child: Wrap(
                children: [
                  skill(
                    main_skill_name: "Front & Back-end Development",
                    skill_name: [
          "HTML",
          "CSS",
          "BootStrap",
          "Flutter",
          "Firebase"
                    ],
                    image_name: [
          "images/html.png",
          "images/css.png",
          "images/bootstrap.png",
          "images/flutter.png",
          "images/firebase.png"
                    ],
                  ),
                  skill(main_skill_name: "Cloud", skill_name: [
                    "AWS",
                    "GCP",
                    "OpenStack"
                  ], image_name: [
                    "images/aws.png",
                    "images/gcp.png",
                    "images/openstack.jpeg"
                  ]),
                  skill(
                    main_skill_name: "DevOps",
                    skill_name: [
          "Docker",
          "Kubernetes",
          "Ansible",
          "OpenShift",
          "Terraform"
                    ],
                    image_name: [
          "images/docker.png",
          "images/k8s.png",
          "images/ansible.png",
          "images/openshift.png",
          "images/tf.png"
                    ],
                  ),
                  skill(
                    main_skill_name: "Programming Languages",
                    skill_name: ["C++", "Python 3.6+", "Dart", "HashiCorp"],
                    image_name: [
          "images/c++.png",
          "images/python.jpeg",
          "images/dart.png",
          "images/hashicorp.png"
                    ],
                  ),
                  skill(
                    main_skill_name: "BigData",
                    skill_name: ["Hadoop HDFS"],
                    image_name: ["images/hadoop.jpeg"],
                  ),
                ],
              ),
            ),
            )
              ],
            
          ),
              ),
        ],
      ),
    );
  }
}
