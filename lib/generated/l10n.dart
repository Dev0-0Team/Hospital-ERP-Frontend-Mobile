// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome Back`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `We're excited to have you back, can't wait to see what you've been up to since you last logged in.`
  String get welcomeBackDescription {
    return Intl.message(
      'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
      name: 'welcomeBackDescription',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Remember me`
  String get rememberMe {
    return Intl.message('Remember me', name: 'rememberMe', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPasswordTitle {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `At our app, we take the security of your information seriously.`
  String get forgotPasswordDescription {
    return Intl.message(
      'At our app, we take the security of your information seriously.',
      name: 'forgotPasswordDescription',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPassword {
    return Intl.message(
      'Reset Password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Or sign in with`
  String get orSignInWith {
    return Intl.message(
      'Or sign in with',
      name: 'orSignInWith',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account yet? `
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account yet? ',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Sign In`
  String get signIn {
    return Intl.message('Sign In', name: 'signIn', desc: '', args: []);
  }

  /// `Already have an account? `
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account? ',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message('Submit', name: 'submit', desc: '', args: []);
  }

  /// `Fill Your Profile`
  String get fillYourProfile {
    return Intl.message(
      'Fill Your Profile',
      name: 'fillYourProfile',
      desc: '',
      args: [],
    );
  }

  /// `Please take a few minutes to fill out your profile with as much detail as possible.`
  String get fillProfileDescription {
    return Intl.message(
      'Please take a few minutes to fill out your profile with as much detail as possible.',
      name: 'fillProfileDescription',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Birth Date`
  String get birthDate {
    return Intl.message('Birth Date', name: 'birthDate', desc: '', args: []);
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message('Get Started', name: 'getStarted', desc: '', args: []);
  }

  /// `Best Doctor\n Appointment App`
  String get onboardingTitle {
    return Intl.message(
      'Best Doctor\n Appointment App',
      name: 'onboardingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.`
  String get onboardingDescription {
    return Intl.message(
      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
      name: 'onboardingDescription',
      desc: '',
      args: [],
    );
  }

  /// `Doctor Specialty`
  String get doctorSpecialty {
    return Intl.message(
      'Doctor Specialty',
      name: 'doctorSpecialty',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get seeAll {
    return Intl.message('See All', name: 'seeAll', desc: '', args: []);
  }

  /// `Recommendation Doctor`
  String get recommendationDoctor {
    return Intl.message(
      'Recommendation Doctor',
      name: 'recommendationDoctor',
      desc: '',
      args: [],
    );
  }

  /// `Hi, {name}!`
  String hiUser(String name) {
    return Intl.message('Hi, $name!', name: 'hiUser', desc: '', args: [name]);
  }

  /// `How Are you Today?`
  String get howAreYouToday {
    return Intl.message(
      'How Are you Today?',
      name: 'howAreYouToday',
      desc: '',
      args: [],
    );
  }

  /// `Book and\nschedule with\nnearest doctor`
  String get bookAndScheduleTitle {
    return Intl.message(
      'Book and\nschedule with\nnearest doctor',
      name: 'bookAndScheduleTitle',
      desc: '',
      args: [],
    );
  }

  /// `Find Nearby`
  String get findNearby {
    return Intl.message('Find Nearby', name: 'findNearby', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get faq {
    return Intl.message('FAQ', name: 'faq', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message('Dark Mode', name: 'darkMode', desc: '', args: []);
  }

  /// `Select Language`
  String get selectLanguage {
    return Intl.message(
      'Select Language',
      name: 'selectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `Arabic`
  String get arabic {
    return Intl.message('Arabic', name: 'arabic', desc: '', args: []);
  }

  /// `By logging, you agree to our `
  String get byLoggingYouAgreeToOur {
    return Intl.message(
      'By logging, you agree to our ',
      name: 'byLoggingYouAgreeToOur',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions `
  String get termsAndConditions {
    return Intl.message(
      'Terms & Conditions ',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `and `
  String get and {
    return Intl.message('and ', name: 'and', desc: '', args: []);
  }

  /// `Privacy Policy.`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy.',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `this is undefined`
  String get undefinedRoute {
    return Intl.message(
      'this is undefined',
      name: 'undefinedRoute',
      desc: '',
      args: [],
    );
  }

  /// `Dr. John Doe`
  String get doctorNamePlaceholder {
    return Intl.message(
      'Dr. John Doe',
      name: 'doctorNamePlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `General | RSUD Gatot Subroto`
  String get doctorSpecialtyPlaceholder {
    return Intl.message(
      'General | RSUD Gatot Subroto',
      name: 'doctorSpecialtyPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `⭐ 4.9 ({count} Reviews)`
  String doctorReviewsPlaceholder(String count) {
    return Intl.message(
      '⭐ 4.9 ($count Reviews)',
      name: 'doctorReviewsPlaceholder',
      desc: '',
      args: [count],
    );
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Item {index}`
  String searchItemPlaceholder(String index) {
    return Intl.message(
      'Item $index',
      name: 'searchItemPlaceholder',
      desc: '',
      args: [index],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Sort By`
  String get sortBy {
    return Intl.message('Sort By', name: 'sortBy', desc: '', args: []);
  }

  /// `Speciality`
  String get speciality {
    return Intl.message('Speciality', name: 'speciality', desc: '', args: []);
  }

  /// `Rating`
  String get rating {
    return Intl.message('Rating', name: 'rating', desc: '', args: []);
  }

  /// `Apply`
  String get apply {
    return Intl.message('Apply', name: 'apply', desc: '', args: []);
  }

  /// `All`
  String get all {
    return Intl.message('All', name: 'all', desc: '', args: []);
  }

  /// `General`
  String get general {
    return Intl.message('General', name: 'general', desc: '', args: []);
  }

  /// `Neurologic`
  String get neurologic {
    return Intl.message('Neurologic', name: 'neurologic', desc: '', args: []);
  }

  /// `Pediatric`
  String get pediatric {
    return Intl.message('Pediatric', name: 'pediatric', desc: '', args: []);
  }

  /// `Doctor Details`
  String get doctorDetails {
    return Intl.message(
      'Doctor Details',
      name: 'doctorDetails',
      desc: '',
      args: [],
    );
  }

  /// `Make An Appointment`
  String get makeAnAppointment {
    return Intl.message(
      'Make An Appointment',
      name: 'makeAnAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Dr. Randy Wigham`
  String get doctorDetailsName {
    return Intl.message(
      'Dr. Randy Wigham',
      name: 'doctorDetailsName',
      desc: '',
      args: [],
    );
  }

  /// `RSUD Gatot Subroto`
  String get doctorDetailsHospital {
    return Intl.message(
      'RSUD Gatot Subroto',
      name: 'doctorDetailsHospital',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message('About', name: 'about', desc: '', args: []);
  }

  /// `Location`
  String get location {
    return Intl.message('Location', name: 'location', desc: '', args: []);
  }

  /// `Reviews`
  String get reviews {
    return Intl.message('Reviews', name: 'reviews', desc: '', args: []);
  }

  /// `About Doctor`
  String get aboutDoctor {
    return Intl.message(
      'About Doctor',
      name: 'aboutDoctor',
      desc: '',
      args: [],
    );
  }

  /// `Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.`
  String get aboutDoctorDescription {
    return Intl.message(
      'Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.',
      name: 'aboutDoctorDescription',
      desc: '',
      args: [],
    );
  }

  /// `Working Time`
  String get workingTime {
    return Intl.message(
      'Working Time',
      name: 'workingTime',
      desc: '',
      args: [],
    );
  }

  /// `Monday - Friday, 08.00 AM - 20.00 PM`
  String get workingTimeDetails {
    return Intl.message(
      'Monday - Friday, 08.00 AM - 20.00 PM',
      name: 'workingTimeDetails',
      desc: '',
      args: [],
    );
  }

  /// `STR`
  String get str {
    return Intl.message('STR', name: 'str', desc: '', args: []);
  }

  /// `Coming Soon`
  String get comingSoon {
    return Intl.message('Coming Soon', name: 'comingSoon', desc: '', args: []);
  }

  /// `Jane`
  String get reviewerNamePlaceholder {
    return Intl.message(
      'Jane',
      name: 'reviewerNamePlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message('Today', name: 'today', desc: '', args: []);
  }

  /// `As someone who lives in a remote area with limited access to healthcare, this telemedicine app has been a game changer for me. I can easily schedule virtual appointments with doctors and get the care I need without having to travel long distances.`
  String get sampleReviewText {
    return Intl.message(
      'As someone who lives in a remote area with limited access to healthcare, this telemedicine app has been a game changer for me. I can easily schedule virtual appointments with doctors and get the care I need without having to travel long distances.',
      name: 'sampleReviewText',
      desc: '',
      args: [],
    );
  }

  /// `Give Rate`
  String get giveRate {
    return Intl.message('Give Rate', name: 'giveRate', desc: '', args: []);
  }

  /// `Share your feedback about the doctor`
  String get shareFeedbackAboutDoctor {
    return Intl.message(
      'Share your feedback about the doctor',
      name: 'shareFeedbackAboutDoctor',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message('Done', name: 'done', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
