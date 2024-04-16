
import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

import 'package:newsapp/components/categ_card_widget.dart';
import 'package:newsapp/components/news_post_builder_widget.dart';
import 'package:newsapp/components/news_post_widget.dart';
import 'package:newsapp/components/categ_card.dart';
import 'package:newsapp/components/news_post.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/temp_files/categ_card_genral.dart';
import 'package:newsapp/temp_files/categ_card_sports.dart';
import 'package:newsapp/temp_files/category_card_business.dart';
//import 'package:newsapp/temp_files/tere_filsategory_card_business.dart';
import 'package:newsapp/temp_files/category_card_enter.dart';
import 'package:newsapp/temp_files/category_card_health.dart';
import 'package:newsapp/temp_files/category_card_tech.dart';
import 'package:newsapp/temp_files/category_card_science.dart';

import 'package:newsapp/components/categ_card.dart';



class HomeScreen extends StatelessWidget {
  

 // take a list of obj from class model and init them using class model constructor ***

  final List <CategoryModel> categories = const [
   
CategoryModel(categoryImage: 'images/technology.jpeg', categoryName:'technology' ),
 
CategoryModel(categoryImage: 'images/science.jpeg', categoryName:'science' ),

 
CategoryModel(categoryImage: 'images/sports4.jpeg', categoryName:'sports' ),
 
CategoryModel(categoryImage: 'images/health.jpeg', categoryName:'health' ),


 
CategoryModel(categoryImage: 'images/entertainment.jpeg', categoryName:'entertainment' ),
 
CategoryModel(categoryImage:'images/general2.jpeg', categoryName:'general' ),

 
CategoryModel(categoryImage: 'images/business3.jpeg', categoryName:'business' ),




  ];














    const HomeScreen();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor : Colors.transparent,
       
        title: Row(
       //   mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
          
          children : [
            Text("News" ,
        style: TextStyle(
          fontSize: 36,
          color :Colors.black,
          ),),

          Text("CLoud" ,
        style: TextStyle(
          fontSize: 36,
          color: Colors.orange,)
          ),
        
        
    
    ],

        ),
       
         centerTitle: true,
    //      elevation:  0, for remove the shadow
    
     

                             ),







        // body using CustomScrollView 
            // way 2


        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0),
          
          child: CustomScrollView(
            
            physics: BouncingScrollPhysics(),
            slivers: [ 
              // u must wrap any widget here with SliverToBoxAdapter()

              SliverToBoxAdapter(
                child: CategoryCardWidget(
                     categories: categories),
              ),
        


        SliverToBoxAdapter(
          child: SizedBox(
                      height: 30),
        ),
        

   
       //   const  NewPostWidget(),
       
           NewsPostBuilderWidget( 
            category: 'general',
           ),
             











            ],
        
          ),
        ) 

























        // body using ListView.builder with a SizedBox with height 85
          // way 2

/*

       body:
       Padding(
         padding: const EdgeInsets.symmetric(horizontal :16.0),
         child: Column(
          
         mainAxisSize: MainAxisSize.min,
         
            children: [
                     Card_Widget(
                   categories: categories),
       
       //
                  SizedBox(
                    height: 30),
       
                // 
       
      
                   Expanded (
                    child: const NewPostWidget()
                   ),

           //






         ],
       ),
       ),






       
         
*/
    




      
    
    
   













































      //   body using ListView 
        // way 1



      // body: CategoryCardTech(),

       /*
       
        body: SizedBox(
          height: 85,
          child: ListView( 
        
            //  in default scrollDirection: Axis.vertical,
            
            scrollDirection: Axis.horizontal,
            
            children: [ 

              CategoryCardSports(),
                  CategoryCardTech(),
                   CategoryCardScience(), 
                   CategoryCardEnter(),
                   CategoryCardHealth(),
                  CategoryCardBusiness(),
                  CategoryCardGeneral(),
                

              
            ],
          ),
        ),  






*/


























 );





  }










}











