import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'tk_patterns.dart';

class _TkMaterialLocalization
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _TkMaterialLocalization();

  @override
  bool isSupported(Locale locale) => locale.languageCode == "tk";

  @override
  bool shouldReload(
          covariant LocalizationsDelegate<MaterialLocalizations> old) =>
      false;

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());
    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: TkPatterns.tkLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(TkPatterns.tkDateSymbols),
    );
    return SynchronousFuture<MaterialLocalizations>(
      TkMaterialLocalization(
        localeName: localeName,
        fullYearFormat: intl.DateFormat('y', localeName),
        compactDateFormat: intl.DateFormat('yMd', localeName),
        shortDateFormat: intl.DateFormat('yMMMd', localeName),
        mediumDateFormat: intl.DateFormat('EEE, d MMM ', localeName),
        longDateFormat: intl.DateFormat('EEEE, d MMMM , y', localeName),
        yearMonthFormat: intl.DateFormat('MMMM y', localeName),
        shortMonthDayFormat: intl.DateFormat('d MMM ', localeName),
        decimalFormat: intl.NumberFormat('#,##0.###', 'en_US'),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', 'en_US'),
      ),
    );
  }
}

class TkMaterialLocalization extends GlobalMaterialLocalizations {
  const TkMaterialLocalization({
    super.localeName = 'tk',
    required super.fullYearFormat,
    required super.compactDateFormat,
    required super.shortDateFormat,
    required super.mediumDateFormat,
    required super.longDateFormat,
    required super.yearMonthFormat,
    required super.shortMonthDayFormat,
    required super.decimalFormat,
    required super.twoDigitZeroPaddedFormat,
  });

  static const LocalizationsDelegate<MaterialLocalizations> delegate =
      _TkMaterialLocalization();

  static const List<String> _weekdays = <String>[
    'Ýekşenbe',
    'Duşenbe',
    'Sişenbe',
    'Çarşenbe',
    'Penşenbe',
    'Anna',
    'Şenbe',
  ];

  static const List<String> _narrowWeekdays = <String>[
    'Ý',
    'D',
    'S',
    'Ç',
    'P',
    'A',
    'Ş'
  ];

  static const List<String> _shortWeekdays = <String>[
    'Ýek',
    'Du',
    'Si',
    'Ça',
    'Pe',
    'An',
    'Şe',
  ];

  static const List<String> _shortMonths = <String>[
    'Ýan',
    'Few',
    'Mar',
    'Apr',
    'Maý',
    'Iýn',
    'Iýl',
    'Awg',
    'Sen',
    'Okt',
    'Noý',
    'Dek',
  ];

  static const List<String> _months = <String>[
    'Ýanwar',
    'Fewral',
    'Mart',
    'Aprel',
    'Maý',
    'Iýun',
    'Iýul',
    'Awgust',
    'Sentýabr',
    'Oktýabr',
    'Noýabr',
    'Dekabr',
  ];

  @override
  String get aboutListTileTitleRaw => r'$applicationName: hakynda';

  @override
  String get alertDialogLabel => r'Bildiriş';

  @override
  String get anteMeridiemAbbreviation => r'IRDEN';

  @override
  String get backButtonTooltip => r'Yza';

  @override
  String get calendarModeButtonLabel => r'Kalendara geçmek';

  @override
  String get cancelButtonLabel => r'ÝATYRMAK';

  @override
  String get closeButtonLabel => r'ÝAPMAK';

  @override
  String get closeButtonTooltip => r'Ýapmak';

  @override
  String get collapsedIconTapHint => r'Giňeltmek';

  @override
  String get continueButtonLabel => r'DOWAM ETMEK';

  @override
  String get copyButtonLabel => r'KOPIÝASYNY ALMAK';

  @override
  String get cutButtonLabel => r'KESIP ALMAK';

  @override
  String get dateHelpText => r'dd.mm.yyyy';

  @override
  String get dateInputLabel => r'Senäni giriziň';

  @override
  String get dateOutOfRangeLabel => r'Çäkden çykylan';

  @override
  String get datePickerHelpText => r'Senäni saýlaň';

  @override
  String get dateRangeEndDateSemanticLabelRaw => r'Soňky sene $fullDate';

  @override
  String get dateRangeEndLabel => r'Gutarýan senesi';

  @override
  String get dateRangePickerHelpText => r'Çägini saýlaň';

  @override
  String get dateRangeStartDateSemanticLabelRaw =>
      'Başlanýan senesi \$fullDate';

  @override
  String get dateRangeStartLabel => 'Başlanýan senesi';

  @override
  String get dateSeparator => '.';

  @override
  String get deleteButtonTooltip => r'Pozmak';

  @override
  String get dialModeButtonLabel => r'Girizmek usulynyň saýlamagyna geçmek';

  @override
  String get dialogLabel => r'Dialog';

  @override
  String get drawerLabel => r'Menýu nawigasiýasy';

  @override
  String get expandedIconTapHint => r'Kiçeltmek';

  @override
  String get hideAccountsLabel => r'Hasaplary gizlemek';

  @override
  String get inputDateModeButtonLabel => r'Girizmek režimine geçmek';

  @override
  String get inputTimeModeButtonLabel => r'Tekst girizmek režimine geçmek';

  @override
  String get invalidDateFormatLabel => r'Nädogry format';

  @override
  String get invalidDateRangeLabel => r'Nädogry çäk';

  @override
  String get invalidTimeLabel => r'Dogry wagty giriziň';

  @override
  String licensesPackageDetailText(int licenseCount) {
    assert(licenseCount >= 0);
    switch (licenseCount) {
      case 0:
        return 'Ygtyýarnama ýök.';
      case 1:
        return '1 sany ygtyýarnama.';
      default:
        return '$licenseCount sany ygtyýarnama.';
    }
  }

  @override
  String get licensesPackageDetailTextOther =>
      '\$licenseCount sany ygtyýarnama';

  @override
  String get licensesPageTitle => r'Ygtyýarnama';

  @override
  String get modalBarrierDismissLabel => r'Ýapmak';

  @override
  String get moreButtonTooltip => r'Köpräk';

  @override
  String get nextMonthTooltip => 'Indiki aý';

  @override
  String get nextPageTooltip => r'Indiki sahypa';

  @override
  String get okButtonLabel => r'Bolýar';

  @override
  String get openAppDrawerTooltip => r'Nawigasiýa menýusyny açyň';

  @override
  String get pageRowsInfoTitleApproximateRaw =>
      r'$firstRow–$lastRow / takmynan $rowCount';

  @override
  String get pageRowsInfoTitleRaw => r'$firstRow–$lastRow / $rowCount';

  @override
  String get pasteButtonLabel => r'GOÝMAK';

  @override
  String get popupMenuLabel => r'Ýuze çykýan menýu';

  @override
  String get postMeridiemAbbreviation => r'Öýlän';

  @override
  String get previousMonthTooltip => r'Öňki aý';

  @override
  String get previousPageTooltip => r'Öňki sahypa';

  @override
  String get refreshIndicatorSemanticLabel => r'Tazelenme';

  @override
  String get remainingTextFieldCharacterCountOther =>
      r'$remainingCount simwolar galdy';

  @override
  String get remainingTextFieldCharacterCountZero => r'Simwol galmady';

  @override
  String get reorderItemDown => r'Aşak geçirmek';

  @override
  String get reorderItemLeft => r'Çepe geçirmek';

  @override
  String get reorderItemRight => r'Saga geçirmek';

  @override
  String get reorderItemToEnd => r'Soňyna geçirmek';

  @override
  String get reorderItemToStart => r'Başyna geçirmek';

  @override
  String get reorderItemUp => r'Ýokaryk geçirmek';

  @override
  String get rowsPerPageTitle => r'Sahypada setirler:';

  @override
  String get saveButtonLabel => 'ÝATDA SAKLAMAK';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.englishLike;

  @override
  String get searchFieldLabel => r'Gözleg';

  @override
  String get selectAllButtonLabel => r'HEMMESINI SAÝLAMAK';

  @override
  String get selectYearSemanticsLabel => 'Ýyly saýlaň';

  @override
  String get selectedRowCountTitleOther =>
      r'$selectedRowCount element saýlanan';

  @override
  String get showAccountsLabel => r'Hasaplary görkezmek';

  @override
  String get showMenuTooltip => r'Menýuny görkez';

  @override
  String get signedInLabel => r'Giriş edildi';

  @override
  String get tabLabelRaw => r'$tabIndex / $tabCount goşmaça goýlan sahypa';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.HH_colon_mm;

  @override
  String get timePickerDialHelpText => 'WAGTY SAÝLAŇ';

  @override
  String get timePickerHourLabel => 'Sagat';

  @override
  String get timePickerHourModeAnnouncement => r'Sagat saýlaň';

  @override
  String get timePickerInputHelpText => 'Wagty giriziň';

  @override
  String get timePickerMinuteLabel => 'Minut';

  @override
  String get timePickerMinuteModeAnnouncement => r'Minut saýlaň';

  @override
  String get unspecifiedDate => 'Sene';

  @override
  String get unspecifiedDateRange => 'Seneleriň çägi';

  @override
  String get viewLicensesButtonLabel => r'YGTYÝARNAMALARY GÖRMEK';

  @override
  List<String> get narrowWeekdays => _narrowWeekdays;

  @override
  int get firstDayOfWeekIndex => 1;

  @override
  String formatMediumDate(DateTime date) {
    final String day = _shortWeekdays[date.weekday - DateTime.monday];
    final String month = _shortMonths[date.month - DateTime.january];
    return '$day, $month ${date.day}';
  }

  @override
  String formatDecimal(int number) {
    if (number > -1000 && number < 1000) return number.toString();

    final String digits = number.abs().toString();
    final StringBuffer result = StringBuffer(number < 0 ? '-' : '');
    final int maxDigitIndex = digits.length - 1;
    for (int i = 0; i <= maxDigitIndex; i += 1) {
      result.write(digits[i]);
      if (i < maxDigitIndex && (maxDigitIndex - i) % 3 == 0) result.write(',');
    }
    return result.toString();
  }

  @override
  String formatCompactDate(DateTime date) {
    // Assumes US mm/dd/yyyy format
    final String month = _formatTwoDigitZeroPad(date.month);
    final String day = _formatTwoDigitZeroPad(date.day);
    final String year = date.year.toString().padLeft(4, '0');
    return '$day.$month.$year';
  }

  @override
  String formatShortDate(DateTime date) {
    final String month = _shortMonths[date.month - DateTime.january];
    return '$month ${date.day}, ${date.year}';
  }

  String _formatTwoDigitZeroPad(int number) {
    assert(0 <= number && number < 100);

    if (number < 10) return '0$number';

    return '$number';
  }

  @override
  String formatFullDate(DateTime date) {
    final String month = _months[date.month - DateTime.january];
    return '${_weekdays[date.weekday - DateTime.monday]}, $month ${date.day}, ${date.year}';
  }

  @override
  String formatMonthYear(DateTime date) {
    final String year = formatYear(date);
    final String month = _months[date.month - DateTime.january];
    return '$month $year';
  }

  @override
  DateTime? parseCompactDate(String? inputString) {
    if (inputString == null) {
      return null;
    }

    // Assumes dd.MM.yyyy format
    final List<String> inputParts = inputString.split('.');
    if (inputParts.length != 3) {
      return null;
    }

    final int? year = int.tryParse(inputParts[2], radix: 10);
    if (year == null || year < 1) {
      return null;
    }

    final int? month = int.tryParse(inputParts[1], radix: 10);
    if (month == null || month < 1 || month > 12) {
      return null;
    }

    final int? day = int.tryParse(inputParts[0], radix: 10);
    if (day == null || day < 1 || day > _getDaysInMonth(year, month)) {
      return null;
    }
    return DateTime(year, month, day);
  }

  int _getDaysInMonth(int year, int month) {
    if (month == DateTime.february) {
      final bool isLeapYear =
          (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0);
      if (isLeapYear) return 29;
      return 28;
    }
    const List<int> daysInMonth = <int>[
      31,
      -1,
      31,
      30,
      31,
      30,
      31,
      31,
      30,
      31,
      30,
      31
    ];
    return daysInMonth[month - 1];
  }

  @override
  String formatShortMonthDay(DateTime date) {
    final String month = _shortMonths[date.month - DateTime.january];
    return '$month ${date.day}';
  }

  @override
  TimeOfDayFormat timeOfDayFormat({bool alwaysUse24HourFormat = false}) {
    return TimeOfDayFormat.HH_colon_mm;
  }

  @override
  String formatTimeOfDay(TimeOfDay timeOfDay,
      {bool alwaysUse24HourFormat = false}) {
    final StringBuffer buffer = StringBuffer();
    buffer
      ..write(formatHour(timeOfDay, alwaysUse24HourFormat: true))
      ..write(':')
      ..write(formatMinute(timeOfDay));

    return '$buffer';
  }

  @override
  String get firstPageTooltip => 'Baş sahypa';

  @override
  String get lastPageTooltip => 'Soňky sahypa';

  @override
  String get keyboardKeyAlt => 'Alt';

  @override
  String get keyboardKeyAltGraph => 'AltGr';

  @override
  String get keyboardKeyBackspace => 'Backspace';

  @override
  String get keyboardKeyCapsLock => 'Caps Lock';

  @override
  String get keyboardKeyChannelDown => 'Channel Down';

  @override
  String get keyboardKeyChannelUp => 'Channel Up';

  @override
  String get keyboardKeyControl => 'Ctrl';

  @override
  String get keyboardKeyDelete => 'Del';

  @override
  String get keyboardKeyEject => 'Eject';

  @override
  String get keyboardKeyEnd => 'End';

  @override
  String get keyboardKeyEscape => 'Esc';

  @override
  String get keyboardKeyFn => 'Fn';

  @override
  String get keyboardKeyHome => 'Home';

  @override
  String get keyboardKeyInsert => 'Insert';

  @override
  String get keyboardKeyMeta => 'Meta';

  @override
  String get keyboardKeyMetaMacOs => 'Command';

  @override
  String get keyboardKeyMetaWindows => 'Win';

  @override
  String get keyboardKeyNumLock => 'Num Lock';

  @override
  String get keyboardKeyNumpad0 => 'Num 0';

  @override
  String get keyboardKeyNumpad1 => 'Num 1';

  @override
  String get keyboardKeyNumpad2 => 'Num 2';

  @override
  String get keyboardKeyNumpad3 => 'Num 3';

  @override
  String get keyboardKeyNumpad4 => 'Num 4';

  @override
  String get keyboardKeyNumpad5 => 'Num 5';

  @override
  String get keyboardKeyNumpad6 => 'Num 6';

  @override
  String get keyboardKeyNumpad7 => 'Num 7';

  @override
  String get keyboardKeyNumpad8 => 'Num 8';

  @override
  String get keyboardKeyNumpad9 => 'Num 9';

  @override
  String get keyboardKeyNumpadAdd => 'Num +';

  @override
  String get keyboardKeyNumpadComma => 'Num ,';

  @override
  String get keyboardKeyNumpadDecimal => 'Num .';

  @override
  String get keyboardKeyNumpadDivide => 'Num /';

  @override
  String get keyboardKeyNumpadEnter => 'Num Enter';

  @override
  String get keyboardKeyNumpadEqual => 'Num =';

  @override
  String get keyboardKeyNumpadMultiply => 'Num *';

  @override
  String get keyboardKeyNumpadParenLeft => 'Num (';

  @override
  String get keyboardKeyNumpadParenRight => 'Num )';

  @override
  String get keyboardKeyNumpadSubtract => 'Num -';

  @override
  String get keyboardKeyPageDown => 'PgDown';

  @override
  String get keyboardKeyPageUp => 'PgUp';

  @override
  String get keyboardKeyPower => 'Power';

  @override
  String get keyboardKeyPowerOff => 'Power Off';

  @override
  String get keyboardKeyPrintScreen => 'Print Screen';

  @override
  String get keyboardKeyScrollLock => 'Scroll Lock';

  @override
  String get keyboardKeySelect => 'Select';

  @override
  String get keyboardKeySpace => 'Space';

  @override
  String get menuBarMenuLabel => 'Menýu paneli';

  @override
  String get bottomSheetLabel => 'Aşaky ekran';

  @override
  String get currentDateLabel => 'Bu gün';

  @override
  String get keyboardKeyShift => 'Shift';

  @override
  String get scrimLabel => 'Maska';

  @override
  String get scrimOnTapHintRaw => r'$modalRouteContentName - ny ýapmak';

  @override
  String get collapsedHint => 'Açylan';

  @override
  String get expandedHint => 'Ýapylan';

  @override
  String get expansionTileCollapsedHint => 'açmak üçin iki gezek basyň';

  @override
  String get expansionTileCollapsedTapHint => 'Goşmaça maglumat üçin açyň';

  @override
  String get expansionTileExpandedHint => 'ýapmak üçin iki gezek basyň';

  @override
  String get expansionTileExpandedTapHint => 'Ýapmak';

  @override
  String get scanTextButtonLabel => 'Teksti skanirlemek';

  @override
  String get lookUpButtonLabel => 'Gözlemek';

  @override
  String get menuDismissLabel => 'Menýuny ýapmak';

  @override
  String get searchWebButtonLabel => 'Internetde gözlemek';

  @override
  String get shareButtonLabel => 'Paýlaşmak...';

  @override
  String get clearButtonTooltip => 'Teksti pozmak';

  @override
  String get selectedDateLabel => 'Saýlanan';
}
