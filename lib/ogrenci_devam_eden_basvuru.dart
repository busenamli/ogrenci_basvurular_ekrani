import 'package:flutter/material.dart';

class DevamEdenBasvuru extends StatefulWidget{

  List<String>? modelList;

  DevamEdenBasvuru({this.modelList});

  @override
  State<DevamEdenBasvuru> createState() {
    return _DevamEdenBasvuruPageState(modelList: modelList);
  }
}

class _DevamEdenBasvuruPageState extends State<DevamEdenBasvuru> {

  List<String>? modelList;

  _DevamEdenBasvuruPageState({this.modelList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Home'),
      ),*/
        body: Center(
            child: buildList()
          //Text('Gelen Başvuru', style: TextStyle(fontSize: 60))),
        )
    );
  }

  ListView buildList(){
    return ListView.builder(
      //itemCount: modelList!.length,
        itemCount: widget.modelList!.length,
        itemBuilder: (BuildContext context, int position){
          return Card(
            color: Colors.black12,
            elevation: 2,
            child: ListTile(
              leading: Icon(
                (Icons.file_copy_sharp),
              ),
              title: Text(widget.modelList![position]),
              trailing: Icon(Icons.swap_vertical_circle_outlined),
              onTap: (){

              },
            ),
          );
        });
  }
}