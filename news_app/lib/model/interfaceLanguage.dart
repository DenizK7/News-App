class InterfaceLanguage {
  Lang? lang;

  InterfaceLanguage({this.lang});

  InterfaceLanguage.fromJson(Map<String, dynamic> json) {
    lang = json['lang'] != null ? new Lang.fromJson(json['lang']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.lang != null) {
      data['lang'] = this.lang!.toJson();
    }
    return data;
  }
}

class Lang {
  Turkish? turkish;
  English? english;

  Lang({this.turkish, this.english});

  Lang.fromJson(Map<String, dynamic> json) {
    turkish =
    json['turkish'] != null ? new Turkish.fromJson(json['turkish']) : null;
    english =
    json['english'] != null ? new English.fromJson(json['english']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.turkish != null) {
      data['turkish'] = this.turkish!.toJson();
    }
    if (this.english != null) {
      data['english'] = this.english!.toJson();
    }
    return data;
  }
}

class English {
  String? login;

  English({this.login});

  English.fromJson(Map<String, dynamic> json) {
    login = json['login'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    return data;
  }
}
class Turkish {
  String? login;
  String? general;

  Turkish({this.login});

  Turkish.fromJson(Map<String, dynamic> json) {
    login = json['giriş'];
    general = json['Genel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    return data;
  }
}