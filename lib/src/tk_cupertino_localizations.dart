import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'tk_patterns.dart';

class _TkCupertinoLocalization
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const _TkCupertinoLocalization();

  @override
  bool isSupported(Locale locale) => locale.languageCode == "tk";

  @override
  bool shouldReload(
          covariant LocalizationsDelegate<CupertinoLocalizations> old) =>
      false;

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());
    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: TkPatterns.tkLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(TkPatterns.tkDateSymbols),
    );

    return SynchronousFuture<CupertinoLocalizations>(
      TkCupertinoLocalization(
        localeName: localeName,
        fullYearFormat: intl.DateFormat('y', localeName),
        mediumDateFormat: intl.DateFormat('EEE, d MMM ', localeName),
        decimalFormat: intl.NumberFormat('#,##0.###', 'en_US'),
        dayFormat: intl.DateFormat('d', localeName),
        doubleDigitMinuteFormat: intl.DateFormat('mm', localeName),
        singleDigitHourFormat: intl.DateFormat('HH', localeName),
        singleDigitMinuteFormat: intl.DateFormat('m', localeName),
        singleDigitSecondFormat: intl.DateFormat('s', localeName),
        weekdayFormat: intl.DateFormat('EEE', localeName),
      ),
    );
  }
}

class TkCupertinoLocalization extends GlobalCupertinoLocalizations {
  const TkCupertinoLocalization({
    super.localeName = 'tk',
    required super.fullYearFormat,
    required super.dayFormat,
    required super.mediumDateFormat,
    required super.singleDigitHourFormat,
    required super.singleDigitMinuteFormat,
    required super.doubleDigitMinuteFormat,
    required super.singleDigitSecondFormat,
    required super.decimalFormat,
    required super.weekdayFormat,
  });

  static const LocalizationsDelegate<CupertinoLocalizations> delegate =
      _TkCupertinoLocalization();

  @override
  String get alertDialogLabel => r'Bildiriş';

  @override
  String get anteMeridiemAbbreviation => r'IRDEN';

  @override
  String get copyButtonLabel => r'KOPIÝASYNY ALMAK';

  @override
  String get cutButtonLabel => r'KESIP ALMAK';

  @override
  String get modalBarrierDismissLabel => r'Ýapmak';

  @override
  String get pasteButtonLabel => r'GOÝMAK';

  @override
  String get postMeridiemAbbreviation => r'Öýlän';

  @override
  String get selectAllButtonLabel => r'HEMMESINI SAÝLAMAK';

  @override
  String get datePickerDateOrderString => 'dmy';

  @override
  String get datePickerDateTimeOrderString => 'date_time_dayPeriod';

  @override
  String? get datePickerHourSemanticsLabelOther => r'$hour sagat';

  @override
  String? get datePickerHourSemanticsLabelFew => r'$hour sagat';

  @override
  String? get datePickerHourSemanticsLabelMany => r'$hour sagat';

  @override
  String? get datePickerHourSemanticsLabelOne => r'$hour sagat';

  @override
  String? get datePickerHourSemanticsLabelTwo => null;

  @override
  String? get datePickerHourSemanticsLabelZero => null;

  @override
  String? get datePickerMinuteSemanticsLabelFew => r'$minute minut';

  @override
  String? get datePickerMinuteSemanticsLabelMany => r'$minute minut';

  @override
  String? get datePickerMinuteSemanticsLabelOne => '1 minut';

  @override
  String get datePickerMinuteSemanticsLabelOther => r'$minute minut';

  @override
  String? get datePickerMinuteSemanticsLabelTwo => null;

  @override
  String? get datePickerMinuteSemanticsLabelZero => null;

  @override
  String get searchTextFieldPlaceholderLabel => 'Gözleg';

  @override
  String get tabSemanticsLabelRaw => r'$tabCount - dan $tabIndex sahypa';

  @override
  String? get timerPickerHourLabelFew => 'sagat';

  @override
  String? get timerPickerHourLabelMany => 'sagat';

  @override
  String? get timerPickerHourLabelOne => 'sagat';

  @override
  String get timerPickerHourLabelOther => 'sagat';

  @override
  String? get timerPickerHourLabelTwo => null;

  @override
  String? get timerPickerHourLabelZero => null;

  @override
  String? get timerPickerMinuteLabelFew => 'min.';

  @override
  String? get timerPickerMinuteLabelMany => 'min.';

  @override
  String? get timerPickerMinuteLabelOne => 'min.';

  @override
  String get timerPickerMinuteLabelOther => 'min.';

  @override
  String? get timerPickerMinuteLabelTwo => null;

  @override
  String? get timerPickerMinuteLabelZero => null;

  @override
  String? get timerPickerSecondLabelFew => 'sek.';

  @override
  String? get timerPickerSecondLabelMany => 'sek.';

  @override
  String? get timerPickerSecondLabelOne => 'sek.';

  @override
  String get timerPickerSecondLabelOther => 'sek.';

  @override
  String? get timerPickerSecondLabelTwo => null;

  @override
  String? get timerPickerSecondLabelZero => null;

  @override
  String get todayLabel => 'Bu gün';

  @override
  String get noSpellCheckReplacementsLabel => 'Çalyşma tapylmady';

  @override
  String get lookUpButtonLabel => 'Gözlemek';

  @override
  String get menuDismissLabel => 'Menýuny ýapmak';

  @override
  String get searchWebButtonLabel => 'Internetde gözlemek';

  @override
  String get shareButtonLabel => 'Paýlaşmak...';

  @override
  String get clearButtonLabel => 'Arassalamak';
  
  @override
  String get backButtonLabel => 'Yza geç';

  @override
  String get cancelButtonLabel => 'Goý bolsun';
}
