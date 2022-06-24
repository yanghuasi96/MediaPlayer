import 'package:untitled/generated/json/base/json_convert_content.dart';
import 'package:untitled/model/movie_item_entity.dart';

MovieItemEntity $MovieItemEntityFromJson(Map<String, dynamic> json) {
	final MovieItemEntity movieItemEntity = MovieItemEntity();
	final List<MovieItemData>? data = jsonConvert.convertListNotNull<MovieItemData>(json['data']);
	if (data != null) {
		movieItemEntity.data = data;
	}
	final double? createdAt = jsonConvert.convert<double>(json['createdAt']);
	if (createdAt != null) {
		movieItemEntity.createdAt = createdAt;
	}
	final double? updatedAt = jsonConvert.convert<double>(json['updatedAt']);
	if (updatedAt != null) {
		movieItemEntity.updatedAt = updatedAt;
	}
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		movieItemEntity.id = id;
	}
	final String? originalName = jsonConvert.convert<String>(json['originalName']);
	if (originalName != null) {
		movieItemEntity.originalName = originalName;
	}
	final double? imdbVotes = jsonConvert.convert<double>(json['imdbVotes']);
	if (imdbVotes != null) {
		movieItemEntity.imdbVotes = imdbVotes;
	}
	final String? imdbRating = jsonConvert.convert<String>(json['imdbRating']);
	if (imdbRating != null) {
		movieItemEntity.imdbRating = imdbRating;
	}
	final String? rottenRating = jsonConvert.convert<String>(json['rottenRating']);
	if (rottenRating != null) {
		movieItemEntity.rottenRating = rottenRating;
	}
	final double? rottenVotes = jsonConvert.convert<double>(json['rottenVotes']);
	if (rottenVotes != null) {
		movieItemEntity.rottenVotes = rottenVotes;
	}
	final String? year = jsonConvert.convert<String>(json['year']);
	if (year != null) {
		movieItemEntity.year = year;
	}
	final String? imdbId = jsonConvert.convert<String>(json['imdbId']);
	if (imdbId != null) {
		movieItemEntity.imdbId = imdbId;
	}
	final String? alias = jsonConvert.convert<String>(json['alias']);
	if (alias != null) {
		movieItemEntity.alias = alias;
	}
	final String? doubanId = jsonConvert.convert<String>(json['doubanId']);
	if (doubanId != null) {
		movieItemEntity.doubanId = doubanId;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		movieItemEntity.type = type;
	}
	final String? doubanRating = jsonConvert.convert<String>(json['doubanRating']);
	if (doubanRating != null) {
		movieItemEntity.doubanRating = doubanRating;
	}
	final double? doubanVotes = jsonConvert.convert<double>(json['doubanVotes']);
	if (doubanVotes != null) {
		movieItemEntity.doubanVotes = doubanVotes;
	}
	final double? duration = jsonConvert.convert<double>(json['duration']);
	if (duration != null) {
		movieItemEntity.duration = duration;
	}
	final String? dateReleased = jsonConvert.convert<String>(json['dateReleased']);
	if (dateReleased != null) {
		movieItemEntity.dateReleased = dateReleased;
	}
	final double? episodes = jsonConvert.convert<double>(json['episodes']);
	if (episodes != null) {
		movieItemEntity.episodes = episodes;
	}
	final double? totalSeasons = jsonConvert.convert<double>(json['totalSeasons']);
	if (totalSeasons != null) {
		movieItemEntity.totalSeasons = totalSeasons;
	}
	final double? artRatings = jsonConvert.convert<double>(json['artRatings']);
	if (artRatings != null) {
		movieItemEntity.artRatings = artRatings;
	}
	final double? actorRatings = jsonConvert.convert<double>(json['actorRatings']);
	if (actorRatings != null) {
		movieItemEntity.actorRatings = actorRatings;
	}
	final double? soundRatings = jsonConvert.convert<double>(json['soundRatings']);
	if (soundRatings != null) {
		movieItemEntity.soundRatings = soundRatings;
	}
	final double? storyRatings = jsonConvert.convert<double>(json['storyRatings']);
	if (storyRatings != null) {
		movieItemEntity.storyRatings = storyRatings;
	}
	final double? enjoymentRatings = jsonConvert.convert<double>(json['enjoymentRatings']);
	if (enjoymentRatings != null) {
		movieItemEntity.enjoymentRatings = enjoymentRatings;
	}
	final double? totalVotes = jsonConvert.convert<double>(json['totalVotes']);
	if (totalVotes != null) {
		movieItemEntity.totalVotes = totalVotes;
	}
	return movieItemEntity;
}

Map<String, dynamic> $MovieItemEntityToJson(MovieItemEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['data'] =  entity.data.map((v) => v.toJson()).toList();
	data['createdAt'] = entity.createdAt;
	data['updatedAt'] = entity.updatedAt;
	data['id'] = entity.id;
	data['originalName'] = entity.originalName;
	data['imdbVotes'] = entity.imdbVotes;
	data['imdbRating'] = entity.imdbRating;
	data['rottenRating'] = entity.rottenRating;
	data['rottenVotes'] = entity.rottenVotes;
	data['year'] = entity.year;
	data['imdbId'] = entity.imdbId;
	data['alias'] = entity.alias;
	data['doubanId'] = entity.doubanId;
	data['type'] = entity.type;
	data['doubanRating'] = entity.doubanRating;
	data['doubanVotes'] = entity.doubanVotes;
	data['duration'] = entity.duration;
	data['dateReleased'] = entity.dateReleased;
	data['episodes'] = entity.episodes;
	data['totalSeasons'] = entity.totalSeasons;
	data['artRatings'] = entity.artRatings;
	data['actorRatings'] = entity.actorRatings;
	data['soundRatings'] = entity.soundRatings;
	data['storyRatings'] = entity.storyRatings;
	data['enjoymentRatings'] = entity.enjoymentRatings;
	data['totalVotes'] = entity.totalVotes;
	return data;
}

MovieItemData $MovieItemDataFromJson(Map<String, dynamic> json) {
	final MovieItemData movieItemData = MovieItemData();
	final double? createdAt = jsonConvert.convert<double>(json['createdAt']);
	if (createdAt != null) {
		movieItemData.createdAt = createdAt;
	}
	final double? updatedAt = jsonConvert.convert<double>(json['updatedAt']);
	if (updatedAt != null) {
		movieItemData.updatedAt = updatedAt;
	}
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		movieItemData.id = id;
	}
	final String? poster = jsonConvert.convert<String>(json['poster']);
	if (poster != null) {
		movieItemData.poster = poster;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		movieItemData.name = name;
	}
	final String? genre = jsonConvert.convert<String>(json['genre']);
	if (genre != null) {
		movieItemData.genre = genre;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		movieItemData.description = description;
	}
	final String? language = jsonConvert.convert<String>(json['language']);
	if (language != null) {
		movieItemData.language = language;
	}
	final String? country = jsonConvert.convert<String>(json['country']);
	if (country != null) {
		movieItemData.country = country;
	}
	final String? lang = jsonConvert.convert<String>(json['lang']);
	if (lang != null) {
		movieItemData.lang = lang;
	}
	final String? shareImage = jsonConvert.convert<String>(json['shareImage']);
	if (shareImage != null) {
		movieItemData.shareImage = shareImage;
	}
	final String? movie = jsonConvert.convert<String>(json['movie']);
	if (movie != null) {
		movieItemData.movie = movie;
	}
	return movieItemData;
}

Map<String, dynamic> $MovieItemDataToJson(MovieItemData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['createdAt'] = entity.createdAt;
	data['updatedAt'] = entity.updatedAt;
	data['id'] = entity.id;
	data['poster'] = entity.poster;
	data['name'] = entity.name;
	data['genre'] = entity.genre;
	data['description'] = entity.description;
	data['language'] = entity.language;
	data['country'] = entity.country;
	data['lang'] = entity.lang;
	data['shareImage'] = entity.shareImage;
	data['movie'] = entity.movie;
	return data;
}