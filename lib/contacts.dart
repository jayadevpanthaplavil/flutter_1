import 'package:flutter/material.dart';


class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List<Chat> chatlist=[Chat(name:"Robin",msg: "Hai daa....",time: "10:00",image: "https://static.vecteezy.com/system/resources/previews/004/229/059/non_2x/fox-cartoon-cute-animals-isolated-vector.jpg"),
    Chat(name:"Abhinanad",msg: "Entha mone....",time: "11:00", image: "https://i.redd.it/y96ja4stinhb1.jpg"),
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
          itemCount:chatlist.length, itemBuilder: (BuildContext context, int index) {
        return ListTile(
          // leading: Icon(Icons.person),
          leading: CircleAvatar(
            backgroundImage: NetworkImage('${chatlist[index].image}'),
          ),
          title: Text("${chatlist[index].name}"),
          subtitle: Text("${chatlist[index].msg}"),
          trailing: Text("${chatlist[index].time}"),
          // trailing: IconButton(icon: Icon(Icons.call), onPressed: () {}),

        );
      },
        separatorBuilder: (BuildContext context,int index){
            return Divider();
        },
      ),
    );
  }
}


class Chat{
  String? name,msg,time, image;
  Chat({required this.name,required this.msg,required this.time, required this.image});
}