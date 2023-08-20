import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  var buttonname = [
    "First Name",
    "Last Name",
    "Gender",
    "Address",
    "Date of birth",
    "Mobile Number",
    "Email id",
  ];
  var icons = [
    Icons.person,
    Icons.person,
    Icons.male,
    Icons.map,
    Icons.calendar_today,
    Icons.phone,
    Icons.mail
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Profile Page"),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: CircleAvatar(
              backgroundImage: const NetworkImage(
                "https://i.guim.co.uk/img/media/fd9b9ed4d416bd1867fe356e49975b9527c26765/0_59_2588_1553/master/2588.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=9524bc6ee58b97a7230c38228afaecec"),
            minRadius: 70,
            maxRadius: 100,
            child: IconButton(
              onPressed: () {},
              icon: (
                const Icon(
                Icons.edit,
                color: Colors.grey,
              )),
              
            ),
          
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: Text(
            "Sundar Pichai",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const Center(
          child: Text("Ceo of Alpahbet Inc"),
        ),
        const SizedBox(
          height: 30,
        ),
        Expanded(
            child: ListView.separated(
          itemCount: buttonname.length,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 231, 231, 231),
                borderRadius: BorderRadius.circular(150)),
            child: ListTile(
              leading: Icon(icons[index]),
              title: TextField(
                decoration: InputDecoration(
                  enabled: false,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: (buttonname[index]),
                ),
              ),
              trailing: IconButton(icon: Icon(Icons.edit), onPressed: () {}),
            ),
          ),
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(height: 10),
        ))
      ]),
    );
  }
}
