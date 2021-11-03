import 'package:flutter/material.dart';

class BitenBasvuru extends StatefulWidget{

  List<String>? modelList;

  BitenBasvuru({this.modelList});

  @override
  State<BitenBasvuru> createState() {
    return _BitenBasvuruPageState(modelList: modelList);
  }
}

class _BitenBasvuruPageState extends State<BitenBasvuru> {

  //Modelin bir özelliği olarak başvuruOnay olabilir ve onaylandı-onaylanmadı için true-false dönebilir,
  //buna uygun olarak da gösterilen icon değişecek
  bool basvuruOnay = false;

  List<String>? modelList;

  _BitenBasvuruPageState({this.modelList});

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
              trailing: buildIcon(),
              onTap: (){

              },
            ),
          );
        });
  }

  //Modelin bir özelliği olarak başvuruOnay olabilir ve onaylandı-onaylanmadı için true-false dönebilir,
  //buna uygun olarak da gösterilen icon değişecek
  Widget buildIcon(){
    if(basvuruOnay) {
      return Icon(Icons.check_circle_rounded);
    }else{
      return Icon(Icons.cancel);
    }
  }
}