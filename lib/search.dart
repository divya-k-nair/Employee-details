import 'package:flutter/material.dart';

class Search extends StatefulWidget {

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController code=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("SEARCH"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  controller: code,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.visibility_off,color: Colors.deepOrangeAccent,size: 40,),
                    labelText: "Ecode",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                RaisedButton(
                  color: Colors.purpleAccent,
                  onPressed: (){
                    var getCode=code.text;
                    print(getCode);

                },
                  child: Text("SEARCH",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                ),
                ),
              ],//children
            ),
          ),
        ),
      ),
    );
  }
}
