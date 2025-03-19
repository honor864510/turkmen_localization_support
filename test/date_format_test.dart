import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:turkmen_localization_support/turkmen_localization_support.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  testWidgets(
    'Displays correct Turkmen date format',
    (WidgetTester tester) async {
      await initializeDateFormatting('tk');
      Intl.defaultLocale = 'tk';

      await tester.pumpWidget(
        MaterialApp(
          locale: const Locale('tk'),
          supportedLocales: const [Locale('tk')],
          localizationsDelegates: TkDelegates.delegates,
          home: Scaffold(
            body: Builder(
              builder: (context) {
                final date = DateTime(2025);
                return Text(DateFormat.yMd('tk').format(date));
              },
            ),
          ),
        ),
      );

      // Wait for localization to load
      await tester.pumpAndSettle();

      // Verify the displayed date matches the expected format
      expect(find.text('01.01.2025'), findsOneWidget);
    },
  );
}
