  import 'package:flutter/material.dart';

class CategoryCardBusiness extends StatelessWidget{
    



    CategoryCardBusiness();

  Widget build(BuildContext context){
    


 return Padding(
          padding: const EdgeInsets.only(right:12.0 ,top: 12 ,),
      
          
          child: Container(
             
              //  padding:EdgeInsets.only(left: 12) ,
            width: 165,
            height: 85,
            
           // color: Colors.yellow,
            
            decoration: BoxDecoration(
              
               image: const DecorationImage(
                image: AssetImage('images/business3.jpeg'),  // tech and sciecnce  and enter and helath
                fit: BoxFit.fill,
               ), 
              
              
              
              color:Colors.amberAccent ,
              borderRadius:  BorderRadius.circular(12),
              
                
              ),
              
              
              
              
              
            child: Center(child: Text("Business "
            ,style:TextStyle(
              fontSize: 22 ,
              color: Colors.white,
              
              )),
              
          ),
          ),
        
      );
  



  }
}