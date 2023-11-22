import 'package:flutter/material.dart';

class ContactsColumn extends StatefulWidget {
  const ContactsColumn({Key? key}) : super(key: key);

  @override
  State<ContactsColumn> createState() => _ContactsColumnState();
}

class _ContactsColumnState extends State<ContactsColumn> {
  List<Chat> chatlist = [
    Chat(
        name: "Robin",
        msg: "Hai daa....",
        time: "10:00",
        image:
            "https://static.vecteezy.com/system/resources/previews/004/229/059/non_2x/fox-cartoon-cute-animals-isolated-vector.jpg"),
    Chat(
        name: "Abhinanad",
        msg: "Entha mone....",
        time: "11:00",
        image: "https://i.redd.it/y96ja4stinhb1.jpg"),
    // Chat(name:"Rohith",msg: "Manasilayo Siree..",time: "12:00",image: "https://i.ytimg.com/vi/33ohpMQFIOc/hqdefault.jpg"),
    // Chat(name:"Shine",msg: "Hello",time: "13:00"),
    // Chat(name:"Gimman",msg: "He He",time: "14:00"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Contacts"),
      ),
      body: ListView.separated(
        itemCount: chatlist.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('${chatlist[index].image}'),
                    ),
                  ),
                  Column(
                    children: [
                      Text("${chatlist[index].name}"),
                      Text("${chatlist[index].msg}"),
                    ],
                  ),
                  Text("${chatlist[index].time}"),

                ],
              )
            ],
            // // leading: Icon(Icons.person),
            // leading: CircleAvatar(
            //   backgroundImage: NetworkImage('${chatist[index].image}'),
            // ),
            // title: Text("${chatist[index].name}"),
            // subtitle: Text("${chatist[index].msg}"),
            // trailing: Text("${chatist[index].time}"),
            // // trailing: IconButton(icon: Icon(Icons.call), onPressed: () {}),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }
}

class Chat {
  String? name, msg, time, image;

  Chat(
      {required this.name,
      required this.msg,
      required this.time,
      required this.image});
}
