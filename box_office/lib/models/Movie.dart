class Movie {
  late String rnum;
  late String rank;
  late String rankInten;
  late String rankOldAndNew;
  late String movieCd;
  late String movieNm;
  late String openDt;
  late String salesAmt;
  late String salesShare;
  late String salesInten;
  late String salesChange;
  late String salesAcc;
  late String audiCnt;
  late String audiInten;
  late String audiChange;
  late String audiAcc;
  late String scrnCnt;
  late String showCnt;

  Movie(dynamic raw) {
    rnum = raw['rnum'] ?? '';
    rank = raw['rank'] ?? '';
    rankInten = raw['rankInten'] ?? '';
    rankOldAndNew = raw['rankOldAndNew'] ?? '';
    movieCd = raw['movieCd'] ?? '';
    movieNm = raw['movieNm'] ?? '';
    openDt = raw['openDt'] ?? '';
    salesAmt = raw['salesAmt'] ?? '';
    salesShare = raw['salesShare'] ?? '';
    salesInten = raw['salesInten'] ?? '';
    salesChange = raw['salesChange'] ?? '';
    salesAcc = raw['salesAcc'] ?? '';
    audiCnt = raw['audiCnt'] ?? '';
    audiInten = raw['audiInten'] ?? '';
    audiChange = raw['audiChange'] ?? '';
    audiAcc = raw['audiAcc'] ?? '';
    scrnCnt = raw['scrnCnt'] ?? '';
    showCnt = raw['showCnt'] ?? '';
  }
}