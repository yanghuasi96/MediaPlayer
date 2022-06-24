import 'dart:convert';
import 'package:untitled/generated/json/base/json_field.dart';
import 'package:untitled/generated/json/movie_item_entity.g.dart';

@JsonSerializable()
class MovieItemEntity {

	late List<MovieItemData> _data;

	List<MovieItemData> get data => _data;

  set data(List<MovieItemData> value) {
    _data = value;
  }

  late double createdAt;
	late double updatedAt;
	late String id;
	late String originalName;
	late double imdbVotes;
	late String imdbRating;
	late String rottenRating;
	late double rottenVotes;
	late String year;
	late String imdbId;
	late String alias;
	late String doubanId;
	late String type;
	late String doubanRating;
	late double doubanVotes;
	late double duration;
	late String dateReleased;
	late double episodes;
	late double totalSeasons;
	late double artRatings;
	late double actorRatings;
	late double soundRatings;
	late double storyRatings;
	late double enjoymentRatings;
	late double totalVotes;
  
  MovieItemEntity();

  factory MovieItemEntity.fromJson(Map<String, dynamic> json) => $MovieItemEntityFromJson(json);
  

  Map<String, dynamic> toJson() => $MovieItemEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class MovieItemData {

	late double _createdAt;

	double get createdAt => _createdAt;

  set createdAt(double value) {
    _createdAt = value;
  }

  late double _updatedAt;
	late String _id;
	late String _poster;
	late String _name;
	late String _genre;
	late String _description;
	late String _language;
	late String _country;
	late String _lang;
	late String _shareImage;
	late String _movie;
  
  MovieItemData();

  factory MovieItemData.fromJson(Map<String, dynamic> json) => $MovieItemDataFromJson(json);

  Map<String, dynamic> toJson() => $MovieItemDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

	double get updatedAt => _updatedAt;

  set updatedAt(double value) {
    _updatedAt = value;
  }

	String get id => _id;

  set id(String value) {
    _id = value;
  }

	String get poster => _poster;

  set poster(String value) {
    _poster = value;
  }

	String get name => _name;

  set name(String value) {
    _name = value;
  }

	String get genre => _genre;

  set genre(String value) {
    _genre = value;
  }

	String get description => _description;

  set description(String value) {
    _description = value;
  }

	String get language => _language;

  set language(String value) {
    _language = value;
  }

	String get country => _country;

  set country(String value) {
    _country = value;
  }

	String get lang => _lang;

  set lang(String value) {
    _lang = value;
  }

	String get shareImage => _shareImage;

  set shareImage(String value) {
    _shareImage = value;
  }

	String get movie => _movie;

  set movie(String value) {
    _movie = value;
  }
}