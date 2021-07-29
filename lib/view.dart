import 'package:flutter/material.dart';

class View extends StatefulWidget {

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  TextEditingController name=TextEditingController();
  TextEditingController code=TextEditingController();
  TextEditingController des=TextEditingController();
  TextEditingController sal=TextEditingController();
  List ename=[];
  List ecode=[];
  List edes=[];
  List esal=[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("VIEW"),
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
                    hintText: "Employeename",
                    labelText: "Employeename",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: code,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box,color: Colors.purpleAccent,size: 40,),
                    hintText: "Employeecode",
                    labelText: "Employeecode",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: des,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box,color: Colors.purpleAccent,size: 40,),
                    hintText: "Designation",
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
                    prefixIcon: Icon(Icons.account_box,color: Colors.purpleAccent,size: 40,),
                    hintText: "Salary",
                    labelText: "Salary",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.lightGreen,
                      onPressed: (){
                      var getName=name.text;
                      var getCode=code.text;
                      var getDes=des.text;
                      var getSal=sal.text;
                      print(getName);
                      print(getCode);
                      print(getDes);
                      print(getSal);
                      setState(() {
                        ename.add(getName);
                        ecode.add(getCode);
                        edes.add(getDes);
                        esal.add(getSal);
                        name.text="";
                        code.text="";
                        des.text="";
                        sal.text="";
                      });

                  },
                    child: Text("VIEW",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                  )
                ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: ename.length==null?0:ename.length,
                    itemBuilder:(context, index) {
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.account_box,color: Colors.redAccent,size: 30,),
                          trailing: GestureDetector(
                            onTap: (){
                              print("delete clicked"+index.toString());
                              setState(() {
                                ename.removeAt(index);
                                ecode.removeAt(index);
                                edes.removeAt(index);
                                esal.removeAt(index);

                              });
                            },

                              child: Icon(Icons.delete,color: Colors.redAccent,size: 30,)),
                          title: Text(ename[index]),
                          subtitle: Text("Employeecode"+ecode[index].toString()+"\n"+"Designation"+edes[index].toString()+"\n"+"Salary"+esal[index].toString()),
                        ),
                      );
                    },)

              ],//children
            ),
          ),
        ),
      ),
    );
  }
}
