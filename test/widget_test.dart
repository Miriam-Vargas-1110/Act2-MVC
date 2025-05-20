import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/draggable_scrollable.dart'; // Import directo

void main() {
  testWidgets('DraggableScrollable UI elements appear', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: DraggableScrollable()));

    expect(find.text('Encuentra tu mejor opcion'), findsOneWidget);
    expect(find.text('Busca tu sucursal mas cercana'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(3));
    expect(find.byIcon(Icons.location_on_outlined), findsWidgets);
  });
}
