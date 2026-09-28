import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Make sure this imports your actual main.dart file. 
// Change 'myapp' to your actual Flutter project name if it is different.
import 'package:myapp/main.dart'; 

void main() {
  testWidgets('Portfolio UI smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const PortfolioApp());

    // Verify that the AppBar title is correct.
    expect(find.text('My Portfolio'), findsOneWidget);

    // Verify that your name is displayed on the screen.
    // findsWidgets is used instead of findsOneWidget just in case the text 
    // appears multiple times (e.g., in the header and the about section).
    expect(find.text('Jivan Leuterio'), findsWidgets);

    // Verify that the job title is present.
    expect(find.text('FreeLancer | Web Developer'), findsOneWidget);

    // Verify that major sections are rendering.
    expect(find.text('Skills'), findsOneWidget);
    expect(find.text('Work Experience'), findsOneWidget);
    expect(find.text('Education History'), findsOneWidget);
  });
}