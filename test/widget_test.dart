import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart'; 

void main() {
  testWidgets('Login screen test', (WidgetTester tester) async {
    
    await tester.pumpWidget(const MyApp());

    
    expect(find.text('Login'), findsOneWidget);

  
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();

   
    expect(find.text('Home Screen'), findsOneWidget);
  });
}
