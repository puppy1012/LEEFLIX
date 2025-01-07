// import '';

class Movie {
  final String title;
  final String keyword;
  final String poster;
  final bool like;
  // final DocumentReference reference;
  Movie.formMap(Map<String, dynamic> map)
      : title = map['title'],
        keyword = map['keyword'],
        poster = map['poster'],
        like = map['like'];

  // Movie.fromSnapshot(DocumentSnapshot snapshot):
  //     this.formMap(snapshot.data, reference: snapshot.reference);
  @override
  String toString() => "Movie<$title:$keyword";
}


