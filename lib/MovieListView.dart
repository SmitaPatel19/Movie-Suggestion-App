import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/MovieDescription.dart';
import 'package:movie_app/MovieDetails.dart';



class MovieList extends StatelessWidget {
  //stle

  final List<Movie> moviedetails = Movie.getMovies();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
        backgroundColor: Colors.purple,

      ),
      backgroundColor: Colors.purple.shade100,

      body: ListView.builder(
        itemCount: moviedetails.length,
          itemBuilder: (BuildContext context,int index){
          return Stack(
            children: [
                MovieCard(moviedetails[index], context),
               Positioned(top: 10, child:  movieImage(moviedetails[index].image)),
            ],
          );
          }
      //       return Card(
      //         child: ListTile(
      //           leading: CircleAvatar(
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 color: Colors.transparent,
      //               ),
      //
      //               child: Text(moviedetails[index].title[0],style: TextStyle(color: Colors.purple.shade50),),
      //             ),
      //           ),
      //           title: Text(moviedetails[index].title,style: TextStyle(color: Colors.purple),),
      //           trailing: Text('--'),
      //           subtitle: Text(moviedetails[index].language),
      //
      //           onTap: () {
      //             Navigator.push(context, MaterialPageRoute(
      //                 builder: (context) => MovieDescription(Moviename: moviedetails[index].title,)));
      //           }
      //         ),
      //       );
      // }


      ),

    );
  }


  Widget MovieCard(Movie moviedetails, BuildContext context){
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 40),
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Card(
          color: Colors.purple,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0,bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Flexible(child: Text(moviedetails.title,
                          style: TextStyle(
                            color: Colors.purple.shade50,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        )),

                        Text("Episodes: ${moviedetails.episodes}",style: mainTextStyle(),),
                      ]
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(moviedetails.language,textAlign: TextAlign.center,style:mainTextStyle(),),
                      Text(moviedetails.genres,textAlign: TextAlign.center,style: mainTextStyle(),),
                      Text(moviedetails.time,textAlign: TextAlign.center,style: mainTextStyle(),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDescription(movie: moviedetails,))),
    );
  }

  TextStyle mainTextStyle(){
    return TextStyle(
      fontSize: 15,
      color: Colors.purple.shade200,
    );
  }

  Widget movieImage(List<String> image){
    return ClipOval(
      child: Container(

        width: 85,
        height: 90,
        child: Image.asset(image[0],fit: BoxFit.cover,),
      ),
    );
  }

}
