import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/theme/serene_canvas_tokens.dart';
import 'package:rick_and_morty/features/shell/presentation/widgets/characters_app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: CharactersAppBar()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                SereneCanvasTokens.margin,
                SereneCanvasTokens.spaceLg,
                SereneCanvasTokens.margin,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'APP PREFERENCES',
                    style: SereneCanvasTokens.labelMd(
                      color: SereneCanvasTokens.subduedText,
                    ),
                  ),
                  const SizedBox(height: SereneCanvasTokens.spaceSm),
                  Text(
                    'Settings',
                    style: SereneCanvasTokens.headlineDisplayMobile(),
                  ),
                  const SizedBox(height: SereneCanvasTokens.spaceLg),

                  // Theme Selector Placeholder
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(
                      Icons.palette_outlined,
                      color: SereneCanvasTokens.primary,
                    ),
                    title: Text('Theme', style: SereneCanvasTokens.labelLg()),
                    trailing: Text(
                      'System',
                      style: SereneCanvasTokens.bodyMd(
                        color: SereneCanvasTokens.subduedText,
                      ),
                    ),
                    onTap: () {
                      // TODO: Trigger Theme modal
                    },
                  ),
                  const Divider(),

                  // Language Selector Placeholder
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(
                      Icons.language_rounded,
                      color: SereneCanvasTokens.primary,
                    ),
                    title: Text(
                      'Language',
                      style: SereneCanvasTokens.labelLg(),
                    ),
                    trailing: Text(
                      'English',
                      style: SereneCanvasTokens.bodyMd(
                        color: SereneCanvasTokens.subduedText,
                      ),
                    ),
                    onTap: () {
                      // TODO: Trigger Language modal
                    },
                  ),

                  const SizedBox(
                    height: 120,
                  ), // Padding for the floating bottom nav
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
