/// textSnippet : "... <b>programing</b> 892.51--015 Keywords : Christmas trees : goal <b>programing</b> 892.51--015 Hansen , Bruce G. 1977. Goal <b>programing</b> : A new tool for the Christmas tree industry . Northeast Forest Exp . Stn . Upper Darby , Pa . 4 p . ( U.S. Dep . of&nbsp;..."

class SearchInfo {
  SearchInfo({
    this.textSnippet,
  });

  SearchInfo.fromJson(dynamic json) {
    textSnippet = json['textSnippet'];
  }
  String? textSnippet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = textSnippet;
    return map;
  }
}
