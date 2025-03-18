// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_brighthr_task/presentation/widgets/app_divider.dart';
import 'package:flutter_brighthr_task/presentation/features/article/widgets/article_card.dart';
import 'package:flutter_brighthr_task/domain/entity/article_entity.dart';

void main() {
  group('Widget Tests', () {
    testWidgets('AppDivider widget test', (WidgetTester tester) async {
      // Build our AppDivider widget with default properties
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: AppDivider())),
      );

      // Verify that the divider is rendered
      expect(find.byType(Divider), findsOneWidget);

      // Test AppDivider with custom properties
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AppDivider(
              padding: const EdgeInsets.all(16),
              color: Colors.red,
              thickness: 2.0,
            ),
          ),
        ),
      );

      // Verify the custom properties
      final divider = tester.widget<Divider>(find.byType(Divider));
      expect(divider.color, Colors.red);
      expect(divider.thickness, 2.0);
    });

    testWidgets('ArticleCard widget test', (WidgetTester tester) async {
      // Create a test article
      final testArticle = ArticleEntity(
        id: 1,
        title: 'Test Article',
        body: 'This is a test article body',
        userId: 1,
      );

      // Build the ArticleCard widget
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ArticleCard(
              article: testArticle,
              onTap: () {},
              isSaved: false,
              onBookmarkPressed: () {},
              showBookmarkIcon: true,
            ),
          ),
        ),
      );

      // Verify that the article title and body are displayed
      expect(find.text('Test Article'), findsOneWidget);
      expect(find.text('This is a test article body'), findsOneWidget);

      // Verify that the bookmark icon is present
      expect(find.byIcon(Icons.bookmark_border), findsOneWidget);

      // Test with saved state
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ArticleCard(
              article: testArticle,
              onTap: () {},
              isSaved: true,
              onBookmarkPressed: () {},
              showBookmarkIcon: true,
            ),
          ),
        ),
      );

      // Verify that the bookmark icon changes when saved
      expect(find.byIcon(Icons.bookmark), findsOneWidget);
    });
  });
}
