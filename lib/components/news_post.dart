import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class NewsPost extends StatelessWidget {
 final ArticleModel articleModel ;  //Take obj from the model and init it in this class Con

 const NewsPost({ required this.articleModel}); 

  @override
  Widget build(BuildContext context) {
   
    return Column(
      
      mainAxisSize: MainAxisSize.min,
     // mainAxisAlignment: MainAxisAlignment.center,

       children: [ 
       
       
        ClipRRect(
          borderRadius :BorderRadius.circular(8),
                // Image.asset (  'Rel path', 
                // width : ,
                //height:  ,
                //fit: ,
                //                       )  ,    
  child: articleModel.image == null ? Image.network('https://dejpknyizje2n.cloudfront.net/svgcustom/clipart/preview/clipart-11418-26810-550x550.webp')
  
   :Image.network(articleModel.image!   // u must not use const keyowrd here

              ,width :double.infinity,
               height:200,
               fit: BoxFit.cover, 
   ),
        ),

        SizedBox( 
          height: 12,
          ),

        
      Text(articleModel.title ?? " "  // u must not use const keyowrd here
      ,maxLines: 2,
      overflow: TextOverflow.ellipsis,
      
      style:TextStyle( 
        fontSize: 20,
        color: Colors.black,
          fontWeight: FontWeight.w600,
          

      )
        ),
        
        SizedBox( 
          height:8   ),


        Text(articleModel.subTitle ?? '' // u must not use const keyowrd here
        ,maxLines: 2,
        overflow:TextOverflow.ellipsis ,

    style: TextStyle ( 
      fontSize: 14,
      color: Colors.grey,
      
    ),
        ),
        






    ],);





  }







}