import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider_notesapp/API/News_model.dart';
import 'package:http/http.dart' as http;
class Newsapp extends StatefulWidget {
  const Newsapp({Key? key}) : super(key: key);

  @override
  State<Newsapp> createState() => _NewsappState();
}

class _NewsappState extends State<Newsapp> {
  @override
  void initState() {
    super.initState();
    fetchNews();
  }
  Future<NewsModel>fetchNews()async{
    final url = "https://newsapi.org/v2/everything?q=tesla&from=2023-11-25&sortBy=publishedAt&apiKey=a41e4199607b40259935afd96e209f6a";
    var response = await http.get(Uri.parse(url));
    if( response.statusCode==200){
      final result = jsonDecode(response.body);
      return NewsModel.fromJson(result);
    }
    else{
      return NewsModel();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: FutureBuilder(future: fetchNews(),builder: (context,snapshot){
        return ListView.builder(itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
              //snapshot.data!.articles![index].urlToImage==null?
              NetworkImage("${snapshot.data!.articles![index].urlToImage}")
                 // : NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgf8_s939zYEP4ocf2QkiyPxQe84I292OErw&usqp=CAU")
            ),
            title:
            //snapshot.data!.articles![index].title == null?
            Text("${snapshot.data!.articles![index].title}") ,
                  //: Text("No data found"),
            subtitle:
            //snapshot.data!.articles![index].description == null?
            Text("${snapshot.data!.articles![index].description}")
                  //: Text("No description found")
          );
        },itemCount: snapshot.data!.articles!.length,
        );
      },),

    );
  }
}
