// status_filter.dart
//
// Single responsibility: represent the "All / Alive / Dead / Unknown"
// filter options and how each maps onto the bloc's `status` string and
// its display label/dot color. No widgets, no bloc calls.

import 'package:flutter/material.dart';

import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';

enum StatusFilter { all, alive, dead, unknown }

extension StatusFilterX on StatusFilter {
  /// Value sent to `FilterCharactersEvent(status: ...)`. `null` means "no
  /// status filter" (the "All" pill).
  String? get apiValue => switch (this) {
    StatusFilter.all => null,
    StatusFilter.alive => 'alive',
    StatusFilter.dead => 'dead',
    StatusFilter.unknown => 'unknown',
  };

  String get label => switch (this) {
    StatusFilter.all => 'All',
    StatusFilter.alive => 'Alive',
    StatusFilter.dead => 'Dead',
    StatusFilter.unknown => 'Unknown',
  };

  /// `null` means "no dot" (only the "All" pill has no dot).
  Color? get dotColor => switch (this) {
    StatusFilter.all => null,
    StatusFilter.alive => SereneCanvasTokens.aliveDot,
    StatusFilter.dead => SereneCanvasTokens.error,
    StatusFilter.unknown => SereneCanvasTokens.onSurfaceVariant,
  };

  /// Maps a raw character status string (e.g. from `CharacterEntity`) to
  /// its dot color, for use on individual character cards.
  static Color dotColorForStatus(String status) {
    switch (status.toLowerCase()) {
      case 'alive':
        return SereneCanvasTokens.aliveDot;
      case 'dead':
        return SereneCanvasTokens.error;
      default:
        return SereneCanvasTokens.onSurfaceVariant;
    }
  }

  /// Reverse of [apiValue] — turns `CharactersState.currentStatus` (or
  /// `null` for "no filter") back into a [StatusFilter], so the page can
  /// derive which pill is selected directly from bloc state instead of
  /// keeping a separate local field in sync with it.
  static StatusFilter fromApiValue(String? value) {
    switch (value?.toLowerCase()) {
      case 'alive':
        return StatusFilter.alive;
      case 'dead':
        return StatusFilter.dead;
      case 'unknown':
        return StatusFilter.unknown;
      default:
        return StatusFilter.all;
    }
  }
}
