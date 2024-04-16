import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';


class NewsService {
  final Dio dio;      // Take an obj from Dio Class

  NewsService(this.dio);   // Initialize dio obj in NewsService Constructor
    
    // this func return List of obj of class or model ArticleModel
  Future <List<ArticleModel>> getEgyptGeneralNews({required String category}) async {
    // this async method return List of obj which called articlesList
    try {
      
    Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=be9f4269650845ceac4a9b1218cdc663&category=$category');
      // Process the response here
 //  Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=eg&apiKey=be9f4269650845ceac4a9b1218cdc663');  
   //Response response = await dio.get('https://arabic-news-api.p.rapidapi.com/france24arabic');
  
    Map<String,dynamic> jsonData =response.data;
    
   // print(jsonData);
   // print(jsonData['totalResults']);



       //    List <dynamic> articles = jsonData['articles']; //
       //  **** Convert this last List of Maps to List of obj 



   List <dynamic> articlesMap = jsonData['articles'];  // this is List of Maps
   //OR    // List<Map<String,dynamic>> articles =jsonData['articles'] as List<Map<String,dynamic>>;   // this way may thorw Exception
  



  //  **** Converting this last List of Maps to List of obj //
    List <ArticleModel> articlesObjList = [];   // this is List of objects ( this is better)



    //  way 1

        for (var article in articlesMap){
        ArticleModel articleModelObj = ArticleModel(
                             image:article["urlToImage"] ,
                                 title: article["title"],
                                subTitle :article['description']);
          articlesObjList.add(articleModelObj);  // add obj to empty list of obj

       
                                }
 






  //   // way 2 using factory Construcutor

  // for (var article in articlesMap){
  //       ArticleModel articleModelObj = ArticleModel.fromJson(article);  // article here 
  //                                                                     // is json there

  //         articlesObjList.add(articleModelObj);  // add obj to empty list of obj

       
  //                               }
 







 print(articlesObjList);  // this is List of objects
 return articlesObjList;  // getNews method return List which called articlesObjList without (). 
                          //note that the return statement must be out of the for in loop       


    } catch (e) {
      // Handle error or Exception if any
      print('Error fetching Egypt general news: $e');
      return [];    // return empty List
    }






  }     // end of getEgyptGeneralNews 





















  /*

  void getSportsNews() async {
    try {
      final response = await dio.get('https://newsapi.org/v2/top-headlines?country=eg&apiKey=be9f4269650845ceac4a9b1218cdc663&category=sports');
      print(response);
    } catch (e) {
      print('Error fetching sports news: $e');
    }
  }

  */







































}
