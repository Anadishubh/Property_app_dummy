import 'package:flutter_localization/flutter_localization.dart';

List<MapLocale> LOCALES = [
  const MapLocale('en', LocaleData.EN),
  const MapLocale('sr', LocaleData.SR),
  const MapLocale('bs', LocaleData.BS),
  const MapLocale('tr', LocaleData.TR),
  const MapLocale('hu', LocaleData.HU),
  const MapLocale('ct', LocaleData.CT),
];

mixin LocaleData {
  static const String language = 'language';
  static const String button = 'button';
  static const String region = 'region';
  static const String thanks = 'thanks';
  static const String thanks2 = 'thanks2';

  static const Map<String, dynamic> EN = {
    language: 'Choose the language of the app.',
    region:
        'Choose the state where you are searching or where your property is located.',
    button: 'Continue',
    thanks: 'Thank you for downloading our app.',
    thanks2:
        'We now need to ask for your permission so that we can personalise your experience based on your use of our app and website.We would be grateful if you could agree to this.',
  };
  static const Map<String, dynamic> SR = {
    language: 'Изаберите језик апликације',
    region: 'Изаберите државу у којој тражите или где се налази ваша имовина.',
    button: 'Настави',
    thanks:'Хвала вам што сте преузели нашу апликацију.',
    thanks2:'Сада морамо да затражимо вашу дозволу како бисмо могли да персонализујемо ваше искуство на основу вашег коришћења наше апликације и веб локације. Били бисмо вам захвални ако бисте се сложили са овим.',
  };
  static const Map<String, dynamic> BS = {
    language: 'Odaberite jezik aplikacije',
    region:
        'Odaberite državu u kojoj tražite ili gdje se nalazi vaša nekretnina.',
    button: 'Nastavi',
    thanks:'Hvala vam što ste preuzeli našu aplikaciju.',
    thanks2:'Sada moramo zatražiti vaše dopuštenje kako bismo mogli personalizirati vaše iskustvo na osnovu vašeg korištenja naše aplikacije i web stranice. Bili bismo vam zahvalni ako pristanete na ovo.',
  };
  static const Map<String, dynamic> TR = {
    language: 'Uygulamanın dilini seçin',
    region: 'Aradığınız eyaleti veya mülkünüzün bulunduğu eyaleti seçin.',
    button: 'Devam etmek',
    thanks:'Uygulamamızı indirdiğiniz için teşekkür ederiz.',
    thanks2:'Uygulamamızı ve web sitemizi kullanımınıza göre deneyiminizi kişiselleştirebilmemiz için şimdi izninizi istememiz gerekiyor. Bunu kabul ederseniz minnettar oluruz.',
  };
  static const Map<String, dynamic> HU = {
    language: 'Válassza ki az alkalmazás nyelvét',
    region:
        'Válassza ki az államot, ahol keres, vagy ahol az ingatlana található.',
    button: 'Folytatni',
    thanks:'Köszönjük, hogy letöltötte alkalmazásunkat.',
    thanks2:'Most az Ön engedélyét kell kérnünk, hogy személyre szabhassuk élményét alkalmazásunk és webhelyünk használata alapján. Hálásak lennénk, ha beleegyezne.',
  };
  static const Map<String, dynamic> CT = {
    language: 'Odaberite jezik aplikacije',
    region:
        'Odaberite državu u kojoj tražite ili gdje se nalazi vaša nekretnina.',
    button: 'Nastaviti',
    thanks:'Hvala što ste preuzeli našu aplikaciju.',
    thanks2:'Sada moramo zatražiti vaše dopuštenje kako bismo mogli personalizirati vaše iskustvo na temelju vašeg korištenja naše aplikacije i web stranice. Bili bismo vam zahvalni ako biste pristali na ovo.',
  };
}
