import 'package:box_office/net/fetch.dart';
import 'package:flutter/material.dart';

class MovieDetailArgs {
  String movieCd;
  MovieDetailArgs(this.movieCd);
}

class MovieDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of( context )!.settings.arguments as MovieDetailArgs;
    return MovieDetail( args.movieCd );
  }
}

class MovieDetail extends StatefulWidget {
  String movieCd;

  MovieDetail( this.movieCd );

  @override
  State<StatefulWidget> createState() => MovieDetailState();
}

class MovieDetailState extends State<MovieDetail> {
  dynamic data = {};
  bool isLoaded = false;
  @override
  void initState() {
    super.initState();

    (() async {
      var json = await fetch('/kobisopenapi/webservice/rest/movie/searchMovieInfo.json', {
        'movieCd': widget.movieCd,
      });
      setState(() {
        data = json['movieInfoResult']['movieInfo'];
        isLoaded = true;
      });
    })();
  }
  @override
  Widget build(BuildContext context) {
    if( !isLoaded ) {
      return Text( 'loading...' );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('영화 상세 정보'),
      ),
      body: Column(
        children: [
          Text( '${data['movieNm']}' ),
          Text( '${data['movieNmEn']}' ),
        ]
      ),
    );
  }
}