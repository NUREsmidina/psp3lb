import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lb3/details.dart';
import 'package:lb3/person.dart';

void main() {
  testWidgets('DetailsScreen has a title and position', (tester) async {
    await tester.pumpWidget(const MaterialApp(home:const DetailsScreen(person: Person("Vasyl Poupkine", "Engineer"),)));

    final titleFinder = find.text('Fullname: Vasyl Poupkine');
    final messageFinder = find.text('Position: Engineer');

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}