
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/MovieDetails.dart';

class MovieDescription extends StatelessWidget {

  final Movie movie;

  const MovieDescription({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(movie.title),
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.purple.shade50,

      body: ListView(
        children: [
            MovieImage(image: movie.image[1]),
          SizedBox(height: 10,),
          Expanded(child: ShowDetails(drama: movie)),
          HorizontalLine(),
          AllDetails(drama: movie),
          HorizontalLine(),
          Text("More Drama Posters....".toUpperCase(),style: TextStyle(
            color: Colors.purple.shade800,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),

          SizedBox(height: 15,),

          Container(
            height: 320,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemCount: movie.image.length,
                separatorBuilder: (context,index) => SizedBox(width: 8,),
                itemBuilder: (context,index) => ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    width: MediaQuery.of(context).size.width ,
                    height: 310,
                    child: Image.asset(movie.image[index],fit: BoxFit.cover,),
                  ),
                ),
              
            ),
          ),
        ],
      )
    );
  }
}

class MovieImage extends StatelessWidget{
  final String image;

  const MovieImage({super.key, required this.image});

    @ override
  Widget build(BuildContext context){
      return Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Stack(
            alignment: Alignment.center,
            children:[
              Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Image.asset(image,fit: BoxFit.cover,),
              // decoration: BoxDecoration(
              //   image: DecorationImage(image: NetworkImage(image),fit: BoxFit.cover)
              // ),
            ),
              
              Icon(Icons.play_circle_outline,
                size: 100,color: Colors.purple.shade50,
              ),
      ]
          ),

          Container(
            height: 30,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0x00f5f5f5),
                  Colors.purple.shade50,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            ),
          )
        ],
      );
    }

}

class ShowDetails extends StatelessWidget {
  final Movie drama;

  const ShowDetails({super.key, required this.drama});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${drama.language} , ${drama.genres} , ${drama.runtime}'.toUpperCase(),style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.purple.shade300,
        ),),

        Text(drama.title,textAlign: TextAlign.center,style: TextStyle(
          fontWeight:FontWeight.bold,
          fontSize: 35,
          color: Colors.purple,
        )),

        SizedBox(height: 15,),

        Text(drama.plot +" More.........",textAlign: TextAlign.start,style: TextStyle(
          fontSize: 17,
          color: Colors.purple.shade500,
        ),
        ),

      ],

    );
  }
}

class AllDetails extends StatelessWidget {
  final Movie drama;

  const AllDetails({super.key, required this.drama});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MovieFields(field: "Genres", value: drama.genres),
              MovieFields(field: "Language", value: drama.language),
              MovieFields(field: "Episodes", value: drama.episodes),
              MovieFields(field: "Runtime", value: drama.runtime),
              MovieFields(field: "Released on", value: drama.released),
              MovieFields(field: "Certificate", value: drama.certificate),
              MovieFields(field: "Also known as", value: drama.otherName),
              MovieFields(field: "Country", value: drama.country),
            ]
        )
    );
  }
}


class HorizontalLine extends StatelessWidget {
  const HorizontalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 1,
      color: Colors.purple,
    );
  }
}

class MovieFields extends StatelessWidget {
  final String field;
  final String value;

  const MovieFields({super.key, required this.field, required this.value});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$field : ',style: TextStyle(
          color: Colors.purple.shade700,
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),),

        Text('$value',style: TextStyle(
          fontSize: 15,
          color: Colors.purple.shade400,
          fontWeight: FontWeight.w500,
        ),)
      ],
    );
  }
}


