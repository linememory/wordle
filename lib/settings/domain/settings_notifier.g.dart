// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsState _$$_SettingsStateFromJson(Map<String, dynamic> json) =>
    _$_SettingsState(
      language: json['language'] == null
          ? const Locale('en')
          : const LocaleConverter()
              .fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SettingsStateToJson(_$_SettingsState instance) =>
    <String, dynamic>{
      'language': const LocaleConverter().toJson(instance.language),
    };
