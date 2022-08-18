import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title:'Lab 2_fibonacci'),
    );
  }
}
class MyHomePage extends StatefulWidget{
  MyHomePage({Key key,this.title}):super(key:key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  TextEditingController heSoN = new TextEditingController();
  String textHolder ="";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: heSoN,
              decoration: InputDecoration(
                labelText: "Nhập N",
              ),
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: (){
              setState(() {
                int n = int.parse(heSoN.text);
                List<int> fibos = <int>[1];
                if(n>1)fibos.add(1);
                if(n>2){
                  for(int i=2;i<n;i++){
                    fibos.add(fibos[i-1]+fibos[i-2]);
                  }
                }
                textHolder = fibos.join('\n');
              });
            },
            child: Text("Tạo dãy FiBo"),
          ),
          Text(
            "Danh sách dãy Fibonicci";
          )
        ],),
      ),
    )
  }
}