  import 'package:flutter/material.dart';

class CategoryCardEnter extends StatelessWidget{
    



    CategoryCardEnter();

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
                image: AssetImage('images/entertainment.jpeg'),  //  and sciecnce  and enter
                fit: BoxFit.fill,
               ), 
              
              
              
              color:Colors.amberAccent ,
              borderRadius:  BorderRadius.circular(12),
              
                
              ),
              
              
              
              
              
            child: Center(child: Text("Entertainment "
            ,style:TextStyle(
              fontSize: 22 ,
              color: Colors.white,
              
              )),
              
          ),
          ),
        
      );
  



  }
}