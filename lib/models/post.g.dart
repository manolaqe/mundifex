// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Post$Impl _$$Post$ImplFromJson(Map<String, dynamic> json) => _$Post$Impl(
      id: json['id'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      location: LocationData.fromJson(json['location'] as Map<String, dynamic>),
      description: json['description'] as String? ?? '',
      comments:
          (json['comments'] as List<dynamic>?)?.map((e) => Comment.fromJson(e as Map<String, dynamic>)).toList() ??
              const <Comment>[],
      likes: (json['likes'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const <String>[],
      dislikes: (json['dislikes'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const <String>[],
      photoUrls: (json['photoUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const <String>[],
      airPerception: (json['airPerception'] as num?)?.toDouble() ?? 0.0,
      cleanPerception: (json['cleanPerception'] as num?)?.toDouble() ?? 0.0,
      noisePerception: (json['noisePerception'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$Post$ImplToJson(_$Post$Impl instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'location': instance.location,
      'description': instance.description,
      'comments': instance.comments,
      'likes': instance.likes,
      'dislikes': instance.dislikes,
      'photoUrls': instance.photoUrls,
      'airPerception': instance.airPerception,
      'cleanPerception': instance.cleanPerception,
      'noisePerception': instance.noisePerception,
    };
