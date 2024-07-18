  import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/screens/category_view.dart';

class CategoryCard extends StatelessWidget{
    
 // take an obj from  model CateoryModel and initalize it in Components Constructor***
  
   final CategoryModel category ;

   const CategoryCard({required this.category});



  Widget build(BuildContext context){
    return


GestureDetector ( 
  onTap: (){
     Navigator.push(context,MaterialPageRoute(
      builder: ( BuildContext context ){ 
        return CategoryView( 
          category: category.categoryName?? '',
        );
      }));    



  },   
          child: Padding(
            padding: const EdgeInsets.only(right:12.0 ,top: 12 ,),
            child: Container(
  
               
  
                //  padding:EdgeInsets.only(left: 12) ,
  
              width: 165,
  
              height: 85,
  
              
  
             // color: Colors.yellow,
  
              
  
              decoration: BoxDecoration(
  
                
  
                 image:  DecorationImage(
  
                  image: AssetImage(category.categoryImage!),  // tech and sciecnce  and enter and helath
  
                  fit: BoxFit.fill,
  
                 ), 
  
                
  
                
  
                
  
                color:Colors.transparent ,
  
                borderRadius:  BorderRadius.circular(12),
  
                
  
                  
  
                ),
  
                
  
                
  
                
  
                
  
                
  
              child: Center(child: Text(category.categoryName!
  
              ,style:TextStyle(
  
                fontSize: 22 ,
  
                color: Colors.white,
  
                
  
                )),
  
                
  
            ),
  
            ),
  
          
  
        ),
);
  



  }
}