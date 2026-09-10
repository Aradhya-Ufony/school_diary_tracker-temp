import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/app_constants.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../auth/viewmodel/login_viewmodel.dart';
import '../viewmodel/locale_controller.dart';

/// Representation of a selectable language item.
class AppLanguageItem {
  final String name;
  final String nativeName;
  final String code;

  const AppLanguageItem({
    required this.name,
    required this.nativeName,
    required this.code,
  });
}

class LanguageScreen extends ConsumerStatefulWidget {
  final bool isInitialSetup;

  const LanguageScreen({
    super.key,
    this.isInitialSetup = false,
  });

  /// Master list of selectable languages provided by user.
  static const List<AppLanguageItem> supportedLanguages = [
    // European
    AppLanguageItem(name: 'English', nativeName: 'English', code: 'en'),
    AppLanguageItem(name: 'English (Australia)', nativeName: 'English (Australia)', code: 'en_AU'),
    AppLanguageItem(name: 'English (Canada)', nativeName: 'English (Canada)', code: 'en_CA'),
    AppLanguageItem(name: 'English (UK)', nativeName: 'English (UK)', code: 'en_GB'),
    AppLanguageItem(name: 'Spanish', nativeName: 'Español', code: 'es'),
    AppLanguageItem(name: 'Spanish (Spain / Castilian)', nativeName: 'Español (España)', code: 'es_ES'),
    AppLanguageItem(name: 'Spanish (Mexico)', nativeName: 'Español (México)', code: 'es_MX'),
    AppLanguageItem(name: 'Spanish (Puerto Rico)', nativeName: 'Español (Puerto Rico)', code: 'es_PR'),
    AppLanguageItem(name: 'Spanish (El Salvador)', nativeName: 'Español (El Salvador)', code: 'es_SV'),
    AppLanguageItem(name: 'French', nativeName: 'Français', code: 'fr'),
    AppLanguageItem(name: 'French (Belgium)', nativeName: 'Français (Belgique)', code: 'fr_BE'),
    AppLanguageItem(name: 'French (Canada)', nativeName: 'Français (Canada)', code: 'fr_CA'),
    AppLanguageItem(name: 'French (Switzerland)', nativeName: 'Français (Suisse)', code: 'fr_CH'),
    AppLanguageItem(name: 'French (France)', nativeName: 'Français (France)', code: 'fr_FR'),
    AppLanguageItem(name: 'German', nativeName: 'Deutsch', code: 'de'),
    AppLanguageItem(name: 'Italian', nativeName: 'Italiano', code: 'it'),
    AppLanguageItem(name: 'Portuguese', nativeName: 'Português', code: 'pt'),
    AppLanguageItem(name: 'Portuguese (Brazil)', nativeName: 'Português (Brasil)', code: 'pt_BR'),
    AppLanguageItem(name: 'Dutch', nativeName: 'Nederlands', code: 'nl'),
    AppLanguageItem(name: 'Russian', nativeName: 'Русский', code: 'ru'),
    AppLanguageItem(name: 'Polish', nativeName: 'Polski', code: 'pl'),
    AppLanguageItem(name: 'Ukrainian', nativeName: 'Українська', code: 'uk'),
    AppLanguageItem(name: 'Czech', nativeName: 'Čeština', code: 'cs'),
    AppLanguageItem(name: 'Romanian', nativeName: 'Română', code: 'ro'),
    AppLanguageItem(name: 'Greek', nativeName: 'Ελληνικά', code: 'el'),
    AppLanguageItem(name: 'Hungarian', nativeName: 'Magyar', code: 'hu'),
    AppLanguageItem(name: 'Swedish', nativeName: 'Svenska', code: 'sv'),
    AppLanguageItem(name: 'Danish', nativeName: 'Dansk', code: 'da'),
    AppLanguageItem(name: 'Finnish', nativeName: 'Suomi', code: 'fi'),
    AppLanguageItem(name: 'Bulgarian', nativeName: 'Български', code: 'bg'),
    AppLanguageItem(name: 'Slovak', nativeName: 'Slovenčina', code: 'sk'),
    AppLanguageItem(name: 'Croatian', nativeName: 'Hrvatski', code: 'hr'),
    AppLanguageItem(name: 'Serbian', nativeName: 'Српски', code: 'sr'),
    AppLanguageItem(name: 'Lithuanian', nativeName: 'Lietuvių', code: 'lt'),
    AppLanguageItem(name: 'Slovenian', nativeName: 'Slovenščina', code: 'sl'),
    AppLanguageItem(name: 'Estonian', nativeName: 'Eesti', code: 'et'),
    AppLanguageItem(name: 'Latvian', nativeName: 'Latviešu', code: 'lv'),
    AppLanguageItem(name: 'Icelandic', nativeName: 'Íslenska', code: 'is'),
    AppLanguageItem(name: 'Irish', nativeName: 'Gaeilge', code: 'ga'),
    AppLanguageItem(name: 'Welsh', nativeName: 'Cymraeg', code: 'cy'),
    AppLanguageItem(name: 'Maltese', nativeName: 'Malti', code: 'mt'),
    AppLanguageItem(name: 'Albanian', nativeName: 'Shqip', code: 'sq'),
    AppLanguageItem(name: 'Macedonian', nativeName: 'Македонски', code: 'mk'),
    AppLanguageItem(name: 'Bosnian', nativeName: 'Bosanski', code: 'bs'),
    AppLanguageItem(name: 'Belarusian', nativeName: 'Беларуская', code: 'be'),
    AppLanguageItem(name: 'Catalan', nativeName: 'Català', code: 'ca'),
    AppLanguageItem(name: 'Galician', nativeName: 'Galego', code: 'gl'),
    AppLanguageItem(name: 'Basque', nativeName: 'Euskara', code: 'eu'),
    AppLanguageItem(name: 'Asturian', nativeName: 'Asturianu', code: 'ast'),
    AppLanguageItem(name: 'Friulian', nativeName: 'Furlan', code: 'fur'),
    AppLanguageItem(name: 'Ligurian', nativeName: 'Lìgure', code: 'lij'),
    AppLanguageItem(name: 'Lombard', nativeName: 'Lumbard', code: 'lmo'),
    AppLanguageItem(name: 'Sardinian', nativeName: 'Sardu', code: 'sc'),
    AppLanguageItem(name: 'Sicilian', nativeName: 'Sicilianu', code: 'scn'),
    AppLanguageItem(name: 'Venetian', nativeName: 'Vèneto', code: 'vec'),
    AppLanguageItem(name: 'Silesian', nativeName: 'Ślōnski', code: 'szl'),
    AppLanguageItem(name: 'Luxembourgish', nativeName: 'Lëtzebuergesch', code: 'lb'),
    AppLanguageItem(name: 'Limburgish', nativeName: 'Limburgs', code: 'li'),
    AppLanguageItem(name: 'Faroese', nativeName: 'Føroyskt', code: 'fo'),
    AppLanguageItem(name: 'Scottish Gaelic', nativeName: 'Gàidhlig', code: 'gd'),
    AppLanguageItem(name: 'Latgalian', nativeName: 'Latgalīšu', code: 'ltg'),
    AppLanguageItem(name: 'Esperanto', nativeName: 'Esperanto', code: 'eo'),

    // Asian & Pacific
    AppLanguageItem(name: 'Chinese (Simplified)', nativeName: '中文 (简体)', code: 'zh'),
    AppLanguageItem(name: 'Chinese (China)', nativeName: '中文 (中国)', code: 'zh_CN'),
    AppLanguageItem(name: 'Chinese (Traditional)', nativeName: '中文 (繁體)', code: 'zh_TW'),
    AppLanguageItem(name: 'Cantonese', nativeName: '粵語', code: 'yue'),
    AppLanguageItem(name: 'Japanese', nativeName: '日本語', code: 'ja'),
    AppLanguageItem(name: 'Korean', nativeName: '한국어', code: 'ko'),
    AppLanguageItem(name: 'Vietnamese', nativeName: 'Tiếng Việt', code: 'vi'),
    AppLanguageItem(name: 'Thai', nativeName: 'ไทย', code: 'th'),
    AppLanguageItem(name: 'Indonesian', nativeName: 'Bahasa Indonesia', code: 'id'),
    AppLanguageItem(name: 'Malay', nativeName: 'Bahasa Melayu', code: 'ms'),
    AppLanguageItem(name: 'Tagalog', nativeName: 'Tagalog', code: 'tl'),
    AppLanguageItem(name: 'Burmese', nativeName: 'မြန်မာဘာသာ', code: 'my'),
    AppLanguageItem(name: 'Khmer', nativeName: 'ភាសាខ្មែរ', code: 'km'),
    AppLanguageItem(name: 'Lao', nativeName: 'ພາສາລາວ', code: 'lo'),
    AppLanguageItem(name: 'Javanese', nativeName: 'Basa Jawa', code: 'jv'),
    AppLanguageItem(name: 'Sundanese', nativeName: 'Basa Sunda', code: 'su'),
    AppLanguageItem(name: 'Balinese', nativeName: 'Basa Bali', code: 'ban'),
    AppLanguageItem(name: 'Minangkabau', nativeName: 'Baso Minangkabau', code: 'min'),
    AppLanguageItem(name: 'Banjar', nativeName: 'Bahasa Banjar', code: 'bjn'),
    AppLanguageItem(name: 'Banjar (Arabic script)', nativeName: 'بَانْجَر', code: 'bjn_Arab'),
    AppLanguageItem(name: 'Acehnese', nativeName: 'Bahsa Acèh', code: 'ace'),
    AppLanguageItem(name: 'Acehnese (Arabic script)', nativeName: 'بهسا اچيه', code: 'ace_Arab'),
    AppLanguageItem(name: 'Buginese', nativeName: 'Basa Ugi', code: 'bug'),
    AppLanguageItem(name: 'Cebuano', nativeName: 'Cebuano', code: 'ceb'),
    AppLanguageItem(name: 'Ilocano', nativeName: 'Ilokano', code: 'ilo'),
    AppLanguageItem(name: 'Pangasinan', nativeName: 'Pangasinan', code: 'pag'),
    AppLanguageItem(name: 'Waray', nativeName: 'Winaray', code: 'war'),
    AppLanguageItem(name: 'Malagasy', nativeName: 'Malagasy', code: 'mg'),
    AppLanguageItem(name: 'Maori', nativeName: 'Te Reo Māori', code: 'mi'),
    AppLanguageItem(name: 'Samoan', nativeName: 'Gagana Samoa', code: 'sm'),
    AppLanguageItem(name: 'Fijian', nativeName: 'Na Vosa Vakaviti', code: 'fj'),
    AppLanguageItem(name: 'Tok Pisin', nativeName: 'Tok Pisin', code: 'tpi'),

    // Indian Subcontinent
    AppLanguageItem(name: 'Hindi', nativeName: 'हिन्दी', code: 'hi'),
    AppLanguageItem(name: 'Bengali', nativeName: 'বাংলা', code: 'bn'),
    AppLanguageItem(name: 'Tamil', nativeName: 'தமிழ்', code: 'ta'),
    AppLanguageItem(name: 'Telugu', nativeName: 'తెలుగు', code: 'te'),
    AppLanguageItem(name: 'Marathi', nativeName: 'मराठी', code: 'mr'),
    AppLanguageItem(name: 'Urdu', nativeName: 'اردو', code: 'ur'),
    AppLanguageItem(name: 'Gujarati', nativeName: 'ગુજરાતી', code: 'gu'),
    AppLanguageItem(name: 'Kannada', nativeName: 'ಕನ್ನಡ', code: 'kn'),
    AppLanguageItem(name: 'Malayalam', nativeName: 'മലയാളം', code: 'ml'),
    AppLanguageItem(name: 'Punjabi', nativeName: 'ਪੰਜਾਬੀ', code: 'pa'),
    AppLanguageItem(name: 'Odia', nativeName: 'ଓଡ଼ିଆ', code: 'or'),
    AppLanguageItem(name: 'Assamese', nativeName: 'অসমীয়া', code: 'as'),
    AppLanguageItem(name: 'Sinhala', nativeName: 'සිංහල', code: 'si'),
    AppLanguageItem(name: 'Nepali', nativeName: 'नेपाली', code: 'ne'),
    AppLanguageItem(name: 'Sindhi', nativeName: 'سنڌي', code: 'sd'),
    AppLanguageItem(name: 'Kashmiri (Arabic script)', nativeName: 'کٲشُر', code: 'ks'),
    AppLanguageItem(name: 'Kashmiri (Devanagari)', nativeName: 'कॉशुर', code: 'ks_Deva'),
    AppLanguageItem(name: 'Maithili', nativeName: 'मैथिली', code: 'mai'),
    AppLanguageItem(name: 'Bhojpuri', nativeName: 'भोजपुरी', code: 'bho'),
    AppLanguageItem(name: 'Awadhi', nativeName: 'अवधी', code: 'awa'),
    AppLanguageItem(name: 'Magahi', nativeName: 'मगही', code: 'mag'),
    AppLanguageItem(name: 'Chhattisgarhi', nativeName: 'छत्तीसगढ़ी', code: 'hne'),
    AppLanguageItem(name: 'Santali', nativeName: 'ᱥᱟᱱᱛᱟᱲᱤ', code: 'sat'),
    AppLanguageItem(name: 'Manipuri', nativeName: 'মৈতৈলোন্', code: 'mni'),
    AppLanguageItem(name: 'Dogri', nativeName: 'डोगरी', code: 'doi'),
    AppLanguageItem(name: 'Divehi', nativeName: 'ދިވެހި', code: 'dv'),
    AppLanguageItem(name: 'Sanskrit', nativeName: 'संस्कृतम्', code: 'sa'),
    AppLanguageItem(name: 'Bodo', nativeName: 'बड़ो', code: 'brx'),
    AppLanguageItem(name: 'Konkani', nativeName: 'कोंकणी', code: 'kok'),

    // Middle Eastern & Central Asian
    AppLanguageItem(name: 'Arabic', nativeName: 'العربية', code: 'ar'),
    AppLanguageItem(name: 'Arabic (Latin)', nativeName: 'Arabiyya', code: 'arb_Latn'),
    AppLanguageItem(name: 'Najdi Arabic', nativeName: 'اللهجة النجدية', code: 'ars'),
    AppLanguageItem(name: 'Moroccan Arabic', nativeName: 'الدارجة المغربية', code: 'ary'),
    AppLanguageItem(name: 'Egyptian Arabic', nativeName: 'العامية المصرية', code: 'arz'),
    AppLanguageItem(name: 'Mesopotamian Arabic', nativeName: 'لهجة عراقية', code: 'acm'),
    AppLanguageItem(name: 'Ta\'izzi-Adeni Arabic', nativeName: 'اللهجة التعزية-العدنية', code: 'acq'),
    AppLanguageItem(name: 'Tunisian Arabic', nativeName: 'الدارجة التونسية', code: 'aeb'),
    AppLanguageItem(name: 'South Levantine Arabic', nativeName: 'اللهجة الشامية الجنوبية', code: 'ajp'),
    AppLanguageItem(name: 'North Levantine Arabic', nativeName: 'اللهجة الشامية الشمالية', code: 'apc'),
    AppLanguageItem(name: 'Hebrew', nativeName: 'עברית', code: 'he'),
    AppLanguageItem(name: 'Persian', nativeName: 'فارسی', code: 'fa'),
    AppLanguageItem(name: 'Dari', nativeName: 'دری', code: 'prs'),
    AppLanguageItem(name: 'Pashto', nativeName: 'پښتو', code: 'ps'),
    AppLanguageItem(name: 'Kurdish (Kurmanji)', nativeName: 'Kurmancî', code: 'ku'),
    AppLanguageItem(name: 'Central Kurdish (Sorani)', nativeName: 'سۆرانی', code: 'ckb'),
    AppLanguageItem(name: 'Uzbek', nativeName: 'Oʻzbekcha', code: 'uz'),
    AppLanguageItem(name: 'Kazakh', nativeName: 'Қазақша', code: 'kk'),
    AppLanguageItem(name: 'Azerbaijani', nativeName: 'Azərbaycan', code: 'az'),
    AppLanguageItem(name: 'South Azerbaijani', nativeName: 'تۆرکجه', code: 'azb'),
    AppLanguageItem(name: 'Turkmen', nativeName: 'Türkmençe', code: 'tk'),
    AppLanguageItem(name: 'Kyrgyz', nativeName: 'Кыргызча', code: 'ky'),
    AppLanguageItem(name: 'Tajik', nativeName: 'Тоҷикӣ', code: 'tg'),
    AppLanguageItem(name: 'Tatar', nativeName: 'Татарча', code: 'tt'),
    AppLanguageItem(name: 'Uyghur', nativeName: 'ئۇيغۇرچە', code: 'ug'),
    AppLanguageItem(name: 'Crimean Tatar', nativeName: 'Qırımtatarca', code: 'crh'),
    AppLanguageItem(name: 'Bashkir', nativeName: 'Башҡортса', code: 'ba'),
    AppLanguageItem(name: 'Georgian', nativeName: 'ქართული', code: 'ka'),
    AppLanguageItem(name: 'Armenian', nativeName: 'Հայերեն', code: 'hy'),
    AppLanguageItem(name: 'Mongolian', nativeName: 'Монгол', code: 'mn'),
    AppLanguageItem(name: 'Tibetan', nativeName: 'བོད་སྐད', code: 'bo'),
    AppLanguageItem(name: 'Dzongkha', nativeName: 'རྫོང་ཁ', code: 'dz'),

    // African
    AppLanguageItem(name: 'Swahili', nativeName: 'Kiswahili', code: 'sw'),
    AppLanguageItem(name: 'Amharic', nativeName: 'አማርኛ', code: 'am'),
    AppLanguageItem(name: 'Yoruba', nativeName: 'Èdè Yorùbá', code: 'yo'),
    AppLanguageItem(name: 'Igbo', nativeName: 'Asụsụ Igbo', code: 'ig'),
    AppLanguageItem(name: 'Hausa', nativeName: 'Harshen Hausa', code: 'ha'),
    AppLanguageItem(name: 'Zulu', nativeName: 'isiZulu', code: 'zu'),
    AppLanguageItem(name: 'Xhosa', nativeName: 'isiXhosa', code: 'xh'),
    AppLanguageItem(name: 'Afrikaans', nativeName: 'Afrikaans', code: 'af'),
    AppLanguageItem(name: 'Shona', nativeName: 'chiShona', code: 'sn'),
    AppLanguageItem(name: 'Chichewa', nativeName: 'Chichewa', code: 'ny'),
    AppLanguageItem(name: 'Kinyarwanda', nativeName: 'Ikinyarwanda', code: 'rw'),
    AppLanguageItem(name: 'Kirundi', nativeName: 'Ikirundi', code: 'rn'),
    AppLanguageItem(name: 'Somali', nativeName: 'Soomaaliga', code: 'so'),
    AppLanguageItem(name: 'Tigrinya', nativeName: 'ትግርኛ', code: 'ti'),
    AppLanguageItem(name: 'Wolof', nativeName: 'Wolof', code: 'wo'),
    AppLanguageItem(name: 'Fulah', nativeName: 'Fulfulde', code: 'ff'),
    AppLanguageItem(name: 'Akan', nativeName: 'Akan', code: 'ak'),
    AppLanguageItem(name: 'Ewe', nativeName: 'Èʋegbe', code: 'ee'),
    AppLanguageItem(name: 'Twi', nativeName: 'Twi', code: 'tw'),
    AppLanguageItem(name: 'Bambara', nativeName: 'Bamanankan', code: 'bm'),
    AppLanguageItem(name: 'Dyula', nativeName: 'Julakan', code: 'dyu'),
    AppLanguageItem(name: 'Fon', nativeName: 'Fɔngbe', code: 'fon'),
    AppLanguageItem(name: 'Ga', nativeName: 'Ga', code: 'gaa'),
    AppLanguageItem(name: 'Mossi', nativeName: 'Mooré', code: 'mos'),
    AppLanguageItem(name: 'Tumbuka', nativeName: 'chiTumbuka', code: 'tum'),
    AppLanguageItem(name: 'Bemba', nativeName: 'Ichibemba', code: 'bem'),
    AppLanguageItem(name: 'Kimbundu', nativeName: 'Kimbundu', code: 'kmb'),
    AppLanguageItem(name: 'Kongo', nativeName: 'Kikongo', code: 'kg'),
    AppLanguageItem(name: 'Tshiluba', nativeName: 'Tshiluba', code: 'lua'),
    AppLanguageItem(name: 'Luo', nativeName: 'Dholuo', code: 'luo'),
    AppLanguageItem(name: 'Luganda', nativeName: 'Oluganda', code: 'lg'),
    AppLanguageItem(name: 'Kikuyu', nativeName: 'Gĩkũyũ', code: 'ki'),
    AppLanguageItem(name: 'Kamba', nativeName: 'Kikamba', code: 'kam'),
    AppLanguageItem(name: 'Nuer', nativeName: 'Thok Nath', code: 'nus'),
    AppLanguageItem(name: 'Dinka', nativeName: 'Thuɔŋjäŋ', code: 'din'),
    AppLanguageItem(name: 'Tsonga', nativeName: 'Xitsonga', code: 'ts'),
    AppLanguageItem(name: 'Tswana', nativeName: 'Setswana', code: 'tn'),
    AppLanguageItem(name: 'Southern Sotho', nativeName: 'Sesotho', code: 'st'),
    AppLanguageItem(name: 'Northern Sotho', nativeName: 'Sepedi', code: 'nso'),
    AppLanguageItem(name: 'Swati', nativeName: 'SiSwati', code: 'ss'),
    AppLanguageItem(name: 'Chokwe', nativeName: 'Cokwe', code: 'cjk'),
    AppLanguageItem(name: 'Kabiye', nativeName: 'Kabɩyɛ', code: 'kbp'),
    AppLanguageItem(name: 'Kabuverdianu', nativeName: 'Kabuverdianu', code: 'kea'),
    AppLanguageItem(name: 'Kanuri (Latin script)', nativeName: 'Kanuri', code: 'kr'),
    AppLanguageItem(name: 'Kanuri (Arabic script)', nativeName: 'کانوری', code: 'knc_Arab'),
    AppLanguageItem(name: 'Lingala', nativeName: 'Lingála', code: 'ln'),
    AppLanguageItem(name: 'Oromo', nativeName: 'Afaan Oromoo', code: 'om'),
    AppLanguageItem(name: 'Sango', nativeName: 'Sängö', code: 'sg'),
    AppLanguageItem(name: 'Tamasheq (Latin script)', nativeName: 'Tamasheq', code: 'taq'),
    AppLanguageItem(name: 'Tamasheq (Tifinagh)', nativeName: 'ⵜⴰⵎⴰܫⴰⵇ', code: 'taq_Tfng'),
    AppLanguageItem(name: 'Central Atlas Tamazight', nativeName: 'ⵜⴰⵎⴰⵣⵉⵖⵜ', code: 'tzm'),
    AppLanguageItem(name: 'Kabyle', nativeName: 'Taqbaylit', code: 'kab'),

    // US Demographics, Indigenous Americas & Creole
    AppLanguageItem(name: 'Chamorro', nativeName: 'Chamoru', code: 'ch'),
    AppLanguageItem(name: 'Haitian Creole', nativeName: 'Kreyòl Ayisyen', code: 'ht'),
    AppLanguageItem(name: 'Hawaiian', nativeName: 'ʻŌlelo Hawaiʻi', code: 'haw'),
    AppLanguageItem(name: 'Hmong (White Hmong)', nativeName: 'Hmoob Dawb', code: 'hmn'),
    AppLanguageItem(name: 'Navajo', nativeName: 'Diné bizaad', code: 'nv'),
    AppLanguageItem(name: 'Papiamento', nativeName: 'Papiamentu', code: 'pap'),
    AppLanguageItem(name: 'Pennsylvania Dutch', nativeName: 'Deitsch', code: 'pdc'),
    AppLanguageItem(name: 'Guarani', nativeName: 'Avañe\'ẽ', code: 'gn'),
    AppLanguageItem(name: 'Aymara', nativeName: 'Aymar aru', code: 'ay'),
    AppLanguageItem(name: 'Quechua', nativeName: 'Runasimi', code: 'qu'),
    AppLanguageItem(name: 'Yiddish', nativeName: 'ייִדיש', code: 'yi'),
  ];

  @override
  ConsumerState<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends ConsumerState<LanguageScreen> {
  final TextEditingController _searchController = TextEditingController();
  late List<AppLanguageItem> _sortedLanguages;
  List<AppLanguageItem> _filteredLanguages = [];
  late String _selectedCode;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    final currentCode = ref.read(localeControllerProvider.notifier).currentCode;
    _selectedCode = currentCode.isNotEmpty ? currentCode : 'en';

    _updateLanguageLists();
    _searchController.addListener(_onSearchChanged);
  }

  void _updateLanguageLists() {
    final query = _searchController.text.trim().toLowerCase();

    // Sort all languages alphabetically first by English name
    final allSorted = List<AppLanguageItem>.from(LanguageScreen.supportedLanguages)
      ..sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));

    // Separate selected language and non-selected languages
    AppLanguageItem? selectedItem;
    final otherItems = <AppLanguageItem>[];
    for (final lang in allSorted) {
      if (lang.code == _selectedCode) {
        selectedItem = lang;
      } else {
        otherItems.add(lang);
      }
    }

    // Always position the selected language at the top
    _sortedLanguages = [
      if (selectedItem != null) selectedItem,
      ...otherItems,
    ];

    if (query.isEmpty) {
      _filteredLanguages = _sortedLanguages;
    } else {
      final matching = _sortedLanguages.where((lang) {
        return lang.name.toLowerCase().contains(query) ||
            lang.nativeName.toLowerCase().contains(query) ||
            lang.code.toLowerCase().contains(query);
      }).toList();

      // Ensure if selected language matches query, it is at index 0 of filtered results
      if (selectedItem != null && matching.contains(selectedItem)) {
        matching.remove(selectedItem);
        matching.insert(0, selectedItem);
      }
      _filteredLanguages = matching;
    }
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    setState(() {
      _updateLanguageLists();
    });
  }

  Future<void> _confirmSelection() async {
    if (_isSaving) return;
    setState(() {
      _isSaving = true;
    });

    try {
      await ref.read(localeControllerProvider.notifier).setLocale(_selectedCode);

      if (!mounted) return;

      if (widget.isInitialSetup) {
        final isLoggedIn = ref.read(authRepositoryProvider).isLoggedIn;
        if (isLoggedIn) {
          context.go(Constants.HOME_ROUTE);
        } else {
          context.go(Constants.LOGIN_ROUTE);
        }
      } else {
        Navigator.of(context).pop();
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final title = widget.isInitialSetup
        ? 'Select Language'
        : (l10n?.languageTitle ?? 'Language');

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: !widget.isInitialSetup,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Search Input Field
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search language...',
                  prefixIcon: const Icon(Icons.search, color: Colors.black54),
                  suffixIcon: _searchController.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear, color: Colors.black54),
                          onPressed: () {
                            _searchController.clear();
                          },
                        )
                      : null,
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColors.PRIMARY,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
            ),

            // Alphabetical Language List
            Expanded(
              child: _filteredLanguages.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.language,
                            size: 48,
                            color: Colors.grey.shade400,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'No languages found',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.separated(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      itemCount: _filteredLanguages.length,
                      separatorBuilder: (context, index) => Divider(
                        height: 1,
                        indent: 16,
                        endIndent: 16,
                        color: Colors.grey.shade200,
                      ),
                      itemBuilder: (context, index) {
                        final language = _filteredLanguages[index];
                        final isSelected = language.code == _selectedCode;

                        return InkWell(
                          borderRadius: BorderRadius.circular(8),
                          onTap: () {
                            setState(() {
                              _selectedCode = language.code;
                              _updateLanguageLists();
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? AppColors.PRIMARY.withValues(alpha: 0.08)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Radio<String>(
                                  value: language.code,
                                  groupValue: _selectedCode,
                                  activeColor: AppColors.PRIMARY,
                                  onChanged: (val) {
                                    if (val != null) {
                                      setState(() {
                                        _selectedCode = val;
                                        _updateLanguageLists();
                                      });
                                    }
                                  },
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        language.name,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: isSelected
                                              ? FontWeight.bold
                                              : FontWeight.w500,
                                          color: isSelected
                                              ? AppColors.PRIMARY
                                              : Colors.black87,
                                        ),
                                      ),
                                      if (language.nativeName.isNotEmpty &&
                                          language.nativeName != language.name)
                                        Text(
                                          language.nativeName,
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                                if (isSelected)
                                  const Icon(
                                    Icons.check_circle,
                                    color: AppColors.PRIMARY,
                                    size: 20,
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),

            // Confirm / Continue Button
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    offset: const Offset(0, -2),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: _isSaving ? null : _confirmSelection,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.PRIMARY,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                  ),
                  child: _isSaving
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : Text(
                          widget.isInitialSetup
                              ? 'CONTINUE'
                              : 'CONFIRM',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                          ),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
