

  import 'package:flutter/material.dart';

class CategoryCardSports extends StatelessWidget{
    



    CategoryCardSports();

  Widget build(BuildContext context){
    return


Padding(
          padding: const EdgeInsets.only(right:12.0 ,top: 12 ,),
      
          
          child: Container(
             
              //  padding:EdgeInsets.only(left: 12) ,
            width: 165,
            height: 85,
            
           // color: Colors.yellow,
            
            decoration: BoxDecoration(
              
               image: const DecorationImage(
                image: AssetImage('images/sports4.jpeg'),  // tech and sciecnce  and enter and helath
                fit: BoxFit.fill,
               ), 
              
              
              
              color:Colors.amberAccent ,
              borderRadius:  BorderRadius.circular(12),
              
                
              ),
              
              
              
              
              
            child: Center(child: Text("Sports "
            ,style:TextStyle(
              fontSize: 30 ,
              color: Colors.white ,
              
              )),
              
          ),
          ),
        
      );
  



  }
}