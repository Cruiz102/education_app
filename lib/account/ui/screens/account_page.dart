import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Center(
                child: Container(
              height: 100,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("lib/pages/repository/jiraffe.jpeg"),
                  backgroundColor: Colors.blue,
                  radius: 30,
                ),
                title: Text(
                  "Name",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Student Account"),
                trailing: Icon(Icons.dangerous),
              ),
            ))
          ],
        ));
  }
}
