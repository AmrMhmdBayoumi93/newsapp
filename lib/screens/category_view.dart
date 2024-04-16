 

 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/components/news_post_builder_widget.dart';

class CategoryView extends StatelessWidget{
    final String category;

  CategoryView({required this.category});

  @override
  Widget build(BuildContext context) {
    
      return Scaffold( 
       body: CustomScrollView( 

        slivers: [ 
          NewsPostBuilderWidget( 
            category:category,
          ),

        ],
       )

      );







    throw UnimplementedError();
  }



}