import 'package:flutter/material.dart';

class Entry extends StatefulWidget {


  @override
  _EntryState createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  TextEditingController name=TextEditingController();
  TextEditingController code=TextEditingController();
  TextEditingController des=TextEditingController();
  TextEditingController sal=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ENTRY"),
        ),
        body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_box,color: Colors.purpleAccent,size: 40,),
                      labelText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: code,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.visibility_off_outlined,color: Colors.purpleAccent,size: 40,),
                      labelText: "Ecode",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: des,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.work_outlined,color: Colors.purpleAccent,size: 40,),
                      labelText: "Designation",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: sal,
                    decoration: InputDecoration(
                      labelText: "Salary",
                      prefixIcon: Icon(Icons.attach_money,color: Colors.purpleAccent,size: 40,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  RaisedButton(
                    color: Colors.pinkAccent,
                    onPressed: (){
                      var getName=name.text;
                      var getEcode=code.text;
                      var getDes=des.text;
                      var getSal=sal.text;
                      print(getName);
                      print(getEcode);
                      print(getDes);
                      print(getSal);

                  },
                    child: Text("REGISTER",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                      ),
                  ),
                  ),
                ],//children

        ),
      ),
    )
      )
    );
  }
}
