import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:listviewbuilder/model/user_model.dart';
import 'package:listviewbuilder/user_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: Container(
                  child: GridView.builder(
                      itemCount: mylist.length,
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1.5,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          crossAxisCount: 1),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                Color(0xff4FC3F7),
                                Color(0xff80CBC4),
                                Color(0xff039BE5)
                              ])),
                          child: Column(
                            children: [
                              Image.asset(
                                '${mylist[index].img}',
                                height: 350,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Name: ${mylist[index].name}",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "ID: ${mylist[index].id}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        );
                      }),
                  color: Color(0xff424242),
                )),
            SizedBox(
              height: 10,
            ),
            Expanded(
                flex: 7,
                child: Container(
                  child: ListView.builder(
                      itemCount: mylist.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          //horizontalTitleGap: 2,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UserDetails()));
                          },
                          leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage('${mylist[index].img}')),
                          title: Text("${mylist[index].name}"),
                          subtitle: Text('${mylist[index].id}'),
                          trailing: Text(mylist[index].isMale == true
                              ? "Male"
                              : mylist[index].isMale == false
                                  ? "Female"
                                  : "Others"),
                        );
                      }),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Color(0xffF06292), Color(0xff039BE5)])),
                ))
          ],
        ),
      ),
    );
  }
}
