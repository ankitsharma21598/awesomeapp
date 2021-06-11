import 'package:flutter/material.dart';

// import '../change_name_card.dart';
import '../drawer.dart';
//import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameContriller =TextEditingController();
  var myText ="Change me";

  @override
  void initState(){
    super.initState(); 
  }
@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey[200],
    appBar: AppBar(
      title: Text("Home Page"),
      actions: <Widget>[
        IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app))
      ],
      
    ),
    body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
                  child: Card(
            // child: ChangeNameCard(myText: myText, nameContriller: _nameContriller),
      ),
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
      onPressed: () {
        myText=_nameContriller.text;
        setState(() {
          
        });
      } ,
      child: Icon(Icons.refresh),
    ),
  );
}
}