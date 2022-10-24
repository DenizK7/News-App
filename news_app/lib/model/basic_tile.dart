import 'package:flutter/material.dart';
import 'package:news_app/model/interfaceLanguage.dart';

class BasicTile{
  final String title;
  final Icon icon ;
  final List<BasicTile> tiles;
  const BasicTile({
    required this.title,
  this.icon = const Icon(Icons.ac_unit),
    this.tiles =const [],
});

}
final basicTiles = <BasicTile>[
  const BasicTile(title: 'Kategoriler',icon: Icon(Icons.close),
      tiles:[
        BasicTile(title: 'Genel' ,icon: Icon(Icons.close),),
        BasicTile(title: 'İş',icon: Icon(Icons.close),),
        BasicTile(title: 'Eğlence',icon: Icon(Icons.close),),
        BasicTile(title: 'Sağlık',icon: Icon(Icons.close),),
        BasicTile(title: 'Bilim',icon: Icon(Icons.close),),
        BasicTile(title: 'Teknoloji',icon: Icon(Icons.close),),
      ],
  ),
  const BasicTile(title: 'Ayarlar',icon: Icon(Icons.close),
    tiles:[
      BasicTile(title: 'Profil Ayarları',icon: Icon(Icons.close),),
      BasicTile(title: 'Dil Değiştir',icon: Icon(Icons.close),
      tiles: [
        BasicTile(title: 'Türkçe',icon: Icon(Icons.close),),
        BasicTile(title: 'İngilizce',icon: Icon(Icons.close),)
      ]),

    ],
  ),

];