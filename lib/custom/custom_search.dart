import 'package:flutter/material.dart';

class CustomSearch extends SearchDelegate{
  List ? filterList=[];
  List <String>TypeOfStore=[
    "11:11 Library","Selena Botique","Electronic World","Yum Yum"
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return[
      IconButton(onPressed: (){
        query="";
      }, icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return
      IconButton(onPressed: (){
        close(context, null);
      }, icon: Icon(Icons.arrow_back))
    ;
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text(" HI ");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query==""){
      return ListView.builder(itemCount: TypeOfStore.length,itemBuilder: (context,i){
        return
          Card(
              child:Padding(padding: const EdgeInsets.all(18),
                child: Text("${TypeOfStore[i]}",style: TextStyle(fontSize: 16),) ,)

          );


      });}
    else{
      filterList = TypeOfStore.where((element) => element.startsWith(query)).toList();

      return ListView.builder(itemCount: filterList!.length,itemBuilder:(context,i){
        return
          Card(
              child:Padding(padding: const EdgeInsets.all(18),
                child: Text("${filterList![i]}",style: TextStyle(fontSize: 16),) ,)

          );


      });}


  }

}