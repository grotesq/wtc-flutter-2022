import 'package:box_office/models/Movie.dart';
import 'package:box_office/net/fetch.dart';
import 'package:box_office/pages/MovieDetail.dart';
import 'package:flutter/material.dart';

class BoxOffice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BoxOfficeState();
  }
}

class BoxOfficeState extends State<BoxOffice> {
  List<Movie> list = [];

  @override
  void initState() {
    super.initState();

    ( () async {
      var json = await fetch('/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json', {
        'targetDt': '20221017'
      });
      setState(() {
        List<Movie> movieList = [];
        (json['boxOfficeResult']['dailyBoxOfficeList'] as List<dynamic>).forEach((element) {
          movieList.add( Movie( element ) );
        });
        list = movieList;
      });
    } )();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( '박스 오피스' ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/movie-detail',
                arguments: MovieDetailArgs(list[index].movieCd),
              );
            },
            child: Text( '${list[index].rank} : ${list[index].movieNm}' ),
          );
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: list.length,
      ),
    );
  }
}
