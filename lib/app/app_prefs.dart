import 'package:shared_preferences/shared_preferences.dart';
import 'package:test01/presentation/resources/langauge_manager.dart';

const String PREFS_KEY_LANG="PREFS_KEY_LANG";

class AppPreferences{
  SharedPreferences _sharedPreferences;
  AppPreferences(this._sharedPreferences);

  Future<String> getAppLanguage()async{
    String ? language=_sharedPreferences.getString(PREFS_KEY_LANG);
    if(language!=null&&language.isNotEmpty){
      return language;
    }else{
      //return default lang
     return LanguageType.ENGLISH.getValue();
    }
  }
}