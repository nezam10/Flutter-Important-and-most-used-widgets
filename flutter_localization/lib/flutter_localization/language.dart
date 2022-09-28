import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'Hello': 'Hello',
        },
        'bn_BD': {
          'Hello': 'হ্যালো',
        },
      };
}




// import 'package:get/get.dart';

// class Languages extends Translations {
//   @override
//   Map<String, Map<String, String>> get keys => {
//         'ko_KR': {
//           'greeting': '안녕하세요',
//         },
//         'ja_JP': {
//           'greeting': 'こんにちは',
//         },
//         'en_US': {
//           'greeting': 'Hello',
//         },
//       };
// }