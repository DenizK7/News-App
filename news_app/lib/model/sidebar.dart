import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/model/basic_tile.dart';
import 'package:news_app/model/categories.dart';
import 'package:news_app/model/language.dart';
import 'package:provider/provider.dart';
import '../viewmodel/article_list_view_model.dart';
import 'package:news_app/model/basic_tile.dart';
class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {

    return Drawer(
      backgroundColor: const Color(0xF5FF7F50),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Deniz'),
              accountEmail: Text('denizkkara72@gmail.com'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network(

                  'https://us.123rf.com/450wm/fizkes/fizkes1808/fizkes180800305/107133745-portrait-of-smiling-middle-aged-male-employee-posing-during-company-team-meeting-in-boardroom-confid.jpg?ver=6',
                    width: 90,
                    height: 90,
              fit: BoxFit.cover,),
            ),
          ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
              'https://cdn.wallpapersafari.com/43/42/IwWBH3.jpg'                ),
                fit: BoxFit.cover,
              )
            ),
          ),
       ListView(

        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
       children: basicTiles.map(buildTile).toList(),


       ),

          const ListTile(
            leading: Icon(Icons.close),
              title : Text("Exit"),
              onTap: pop,

            ),



        ],
      ),
    );
  }

  Widget buildTile(BasicTile tile, {double leftPadding = 16}){
    final vm = Provider.of<ArticleListViewModel>(context);

    if(tile.tiles.isEmpty){
      return ListTile(
        leading: const Icon(Icons.keyboard_arrow_right_outlined),
        title: Text(tile.title),
       onTap: ()=>{
       if(tile.title== categories[0].value){
          vm.getNews(categories[0].key , languages[1].key),
    }
    else if (tile.title== categories[1].value){
      vm.getNews(categories[1].key, languages[1].key)
    }
    else if (tile.title== categories[2].value){
      vm.getNews(categories[2].key, languages[1].key)
    }
    else if (tile.title== categories[3].value){
      vm.getNews(categories[3].key, languages[1].key)
    }
    else if (tile.title== categories[4].value){
      vm.getNews(categories[4].key, languages[1].key)
    }
    else if (tile.title== categories[5].value){
      vm.getNews(categories[5].key, languages[1].key)
    }
    else if (tile.title== categories[6].value){
      vm.getNews(categories[6].key, languages[1].key)
    }
       },

      );
    }else{
    return ExpansionTile(
      // tilePadding: EdgeInsets.only(left: leftPadding),
      title: Text(tile.title),
      leading: const Icon(Icons.category),
      children: tile.tiles.map((tile) => buildTile(tile)).toList(),
    );}
  }
  static Future<void> pop({bool? animated}) async {
    await SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop', animated);
  }
}

