import 'dart:core';

import 'package:social_stats/domain/entity/social.dart';

extension AbbreviationNumber on num {
  String abbreviation() {
    if (this >= 1000 && this <= 1000000) {
      return '${(this / 1000).toStringAsFixed(1)} K';
    }
    if (this >= 1000000 && this <= 1000000000) {
      return '${this ~/ 1000000000} M';
    }
    return '$this';
  }

  String avgValue(int lastValue) {
    if (this > lastValue) {
      return '+${(((this - lastValue) / this) * 100).toStringAsFixed(1)}%';
    } else {
      return '-${(((lastValue - this) / lastValue) * 100).toStringAsFixed(1)}%';
    }
  }
}

extension CalculateNumber on List {
  int calculateLikes<T extends SocialMedia>() {
    final list = this as List<T>;
    return list.fold<int>(
        0, (previousValue, element) => previousValue + (element.likes ?? 0));
  }

  int calculateLastLikes<T extends SocialMedia>() {
    final list = this as List<T>;
    return list.fold<int>(0,
        (previousValue, element) => previousValue + (element.lastLikes ?? 0));
  }

  int calculateComments<T extends SocialMedia>() {
    final list = this as List<T>;
    return list.fold<int>(
        0, (previousValue, element) => previousValue + (element.comments ?? 0));
  }

  int calculateLastComments<T extends SocialMedia>() {
    final list = this as List<T>;
    return list.fold<int>(
        0,
        (previousValue, element) =>
            previousValue + (element.lastComments ?? 0));
  }

  int calculateMention<T extends SocialMedia>() {
    final list = this as List<T>;
    return list.fold<int>(
        0, (previousValue, element) => previousValue + (element.mentions ?? 0));
  }

  int calculateLastMention<T extends SocialMedia>() {
    final list = this as List<T>;
    return list.fold<int>(
        0,
        (previousValue, element) =>
            previousValue + (element.lastMentions ?? 0));
  }

  int calculateFollowers<T extends SocialMedia>() {
    final list = this as List<T>;
    return list.fold<int>(0,
        (previousValue, element) => previousValue + (element.followers ?? 0));
  }

  int calculateLastFollowers<T extends SocialMedia>() {
    final list = this as List<T>;
    return list.fold<int>(
        0,
        (previousValue, element) =>
            previousValue + (element.lastFollowers ?? 0));
  }
}
