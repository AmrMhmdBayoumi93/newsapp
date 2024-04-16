

   // Way 1

// model ArticleModel
class ArticleModel { 

    final String? image;
    final String ?title;
    final String ?subTitle;

    ArticleModel( {required this.image,required this.title,required this.subTitle});









}




    // Way 2
    // using factory Constructor in Model



// // model ArticleModel
// class ArticleModel { 

//     final String? image;
//     final String ?title;
//     final String ?subTitle;

//     ArticleModel( {required this.image,required this.title,required this.subTitle});




//     // using factory Constructor   
//     // DefaultConstructor.namedConstructor

//  factory ArticleModel.fromJson(json){
//   return ArticleModel(
//     image:json["urlToImage"] ,      
//      title: json["title"],
//        subTitle :json['description']
       
//        );
//    }










// }
