import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'strings_en.dart';
import 'strings_id.dart';

/// Callers can lookup localized strings with an instance of Strings
/// returned by `Strings.of(context)`.
///
/// Applications need to include `Strings.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/strings.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Strings.localizationsDelegates,
///   supportedLocales: Strings.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Strings.supportedLocales
/// property.
abstract class Strings {
  Strings(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Strings? of(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  static const LocalizationsDelegate<Strings> delegate = _StringsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('id')
  ];

  /// No description provided for @chooseTheme.
  ///
  /// In en, this message translates to:
  /// **'Choose Theme'**
  String get chooseTheme;

  /// No description provided for @chooseLanguage.
  ///
  /// In en, this message translates to:
  /// **'Choose Language'**
  String get chooseLanguage;

  /// No description provided for @underDevelopmentTitle.
  ///
  /// In en, this message translates to:
  /// **'This site is under development'**
  String get underDevelopmentTitle;

  /// No description provided for @underDevelopmentDesc.
  ///
  /// In en, this message translates to:
  /// **'Until her complete the codes'**
  String get underDevelopmentDesc;

  /// No description provided for @createdWith.
  ///
  /// In en, this message translates to:
  /// **'Created with'**
  String get createdWith;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @sendEmail.
  ///
  /// In en, this message translates to:
  /// **'Send Email'**
  String get sendEmail;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @portfolio.
  ///
  /// In en, this message translates to:
  /// **'Portfolio'**
  String get portfolio;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get services;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Theme Light'**
  String get themeLight;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Theme Dark'**
  String get themeDark;

  /// No description provided for @themeSystem.
  ///
  /// In en, this message translates to:
  /// **'Theme System'**
  String get themeSystem;

  /// No description provided for @appDesc.
  ///
  /// In en, this message translates to:
  /// **'Where Ideas Come to Life.'**
  String get appDesc;

  /// No description provided for @blog.
  ///
  /// In en, this message translates to:
  /// **'Blog'**
  String get blog;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello'**
  String get hello;

  /// No description provided for @profileTitle.
  ///
  /// In en, this message translates to:
  /// **'My name is Naz.'**
  String get profileTitle;

  /// No description provided for @profileDesc.
  ///
  /// In en, this message translates to:
  /// **' Currently working on Celloscope as Software Engineer II. I am specialized in Mobile Application Development with more than 4 years experience. Writing code for Android Native and Hybrid with Flutter Framework then implement mobile apps guidelines and realize UI/UX quality is one of the most important things in mobile apps development. That\'s why, I always try to deliver pixel perfect layouts tested on various devices.'**
  String get profileDesc;

  /// No description provided for @downloadCV.
  ///
  /// In en, this message translates to:
  /// **'Download CV'**
  String get downloadCV;

  /// No description provided for @buildTitle.
  ///
  /// In en, this message translates to:
  /// **'Build'**
  String get buildTitle;

  /// No description provided for @buildDesc.
  ///
  /// In en, this message translates to:
  /// **'Help you tou build an application\nfrom scratch with high quality code.'**
  String get buildDesc;

  /// No description provided for @fixTitle.
  ///
  /// In en, this message translates to:
  /// **'Fix'**
  String get fixTitle;

  /// No description provided for @fixDesc.
  ///
  /// In en, this message translates to:
  /// **'Fix bugs in your application\nand also improve the performance.'**
  String get fixDesc;

  /// No description provided for @continueTitle.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueTitle;

  /// No description provided for @continueDesc.
  ///
  /// In en, this message translates to:
  /// **'Continue your existing application project\nand improve the Application quality.'**
  String get continueDesc;

  /// No description provided for @portfolioDesc.
  ///
  /// In en, this message translates to:
  /// **'Latest project'**
  String get portfolioDesc;

  /// No description provided for @tags.
  ///
  /// In en, this message translates to:
  /// **'Tags:'**
  String get tags;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support Me'**
  String get support;

  /// No description provided for @socialMedia.
  ///
  /// In en, this message translates to:
  /// **'Follow Me'**
  String get socialMedia;

  /// No description provided for @seeMyBlog.
  ///
  /// In en, this message translates to:
  /// **'Keep Connecting'**
  String get seeMyBlog;
}

class _StringsDelegate extends LocalizationsDelegate<Strings> {
  const _StringsDelegate();

  @override
  Future<Strings> load(Locale locale) {
    return SynchronousFuture<Strings>(lookupStrings(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_StringsDelegate old) => false;
}

Strings lookupStrings(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return StringsEn();
    case 'id': return StringsId();
  }

  throw FlutterError(
    'Strings.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
