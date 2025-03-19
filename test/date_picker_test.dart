import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:turkmen_localization_support/turkmen_localization_support.dart';

void main() {
  group(
    'Date picker tester',
    () {
      Future<void> prepareDatePicker(
        WidgetTester tester,
        Future<void> Function(Future<DateTime?> date) callback, {
        TextDirection textDirection = TextDirection.LTR,
        bool useMaterial3 = false,
        ThemeData? theme,
        DatePickerEntryMode initialEntryMode = DatePickerEntryMode.calendar,
        TextScaler textScaler = TextScaler.noScaling,
      }) async {
        late BuildContext buttonContext;
        await tester.pumpWidget(
          MaterialApp(
            localizationsDelegates: TkDelegates.delegates,
            theme: theme ?? ThemeData(useMaterial3: useMaterial3),
            home: MediaQuery(
              data: MediaQueryData(textScaler: textScaler),
              child: Material(
                child: Builder(
                  builder: (BuildContext context) {
                    return ElevatedButton(
                      onPressed: () {
                        buttonContext = context;
                      },
                      child: const Text('Go'),
                    );
                  },
                ),
              ),
            ),
          ),
        );

        await tester.tap(find.text('Go'));
        expect(buttonContext, isNotNull);

        final Future<DateTime?> date = showDatePicker(
          context: buttonContext,
          initialEntryMode: initialEntryMode,
          initialDate: DateTime(2025, 3, 23),
          firstDate: DateTime(2024),
          lastDate: DateTime(2026),
          locale: const Locale('tk'),
        );

        await tester.pumpAndSettle(const Duration(seconds: 1));
        await callback(date);
      }

      testWidgets(
        'Test manual date input in Flutter date picker with Turkmen format',
        (WidgetTester tester) async {
          await initializeDateFormatting('tk');
          Intl.defaultLocale = 'tk';

          await prepareDatePicker(
            tester,
            (Future<DateTime?> date) async {
              await tester.enterText(find.byType(TextField), '23.03.2025');
              await tester.tap(find.text('Bolýar'));
              await tester.pumpAndSettle();
              expect(find.text('Nädogry format'), findsNothing);
            },
            initialEntryMode: DatePickerEntryMode.inputOnly,
          );
        },
      );
    },
  );
}
