


import 'package:flutter/material.dart';
import 'package:newsapp/components/categ_card.dart';
import 'package:newsapp/models/category_model.dart';


class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({  required this.categories,
  });

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 85,  // same height of Container
     
      child: ListView.builder(


        physics: BouncingScrollPhysics(), 
           scrollDirection: Axis.horizontal,
       
      
      itemCount:categories.length  ,
       
       itemBuilder:(context, index){
            
             return CategoryCard(
              category: categories[index]);
       } ,
        
         
         
         
         
         ),);
  }
}

