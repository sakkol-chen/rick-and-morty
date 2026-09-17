// characters_search_bar.dart
//
// Single responsibility: render a persistent pill-shaped search input and
// report what the user typed (and when they cleared it). Doesn't know
// about CharactersBloc, debouncing, or SearchCharactersEvent — the page
// owns the controller and decides what to do with `onChanged`/`onClear`.
// (CharactersBloc already debounces SearchCharactersEvent by 300ms via its
// EventTransformer, so this widget can just forward every keystroke.)

import 'package:flutter/material.dart';

import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';

class CharactersSearchBar extends StatelessWidget {
  const CharactersSearchBar({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.onClear,
    this.hintText = 'Search dimension travelers…',
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: SereneCanvasTokens.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(SereneCanvasTokens.radiusFull),
        boxShadow: SereneCanvasTokens.ambientShadow,
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: SereneCanvasTokens.bodyMd(),
        cursorColor: SereneCanvasTokens.primary,
        decoration: InputDecoration(
          isDense: true,
          hintText: hintText,
          hintStyle: SereneCanvasTokens.bodyMd(
            color: SereneCanvasTokens.subduedText,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 14,
          ),
          prefixIcon: const Icon(
            Icons.search_rounded,
            size: 20,
            color: SereneCanvasTokens.subduedText,
          ),
          suffixIcon: ValueListenableBuilder<TextEditingValue>(
            valueListenable: controller,
            builder: (context, value, _) {
              if (value.text.isEmpty) return const SizedBox.shrink();
              return IconButton(
                icon: const Icon(
                  Icons.close_rounded,
                  size: 18,
                  color: SereneCanvasTokens.subduedText,
                ),
                onPressed: () {
                  controller.clear();
                  onClear();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
