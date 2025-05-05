class Parameters {
  static int n = 0;
  static String result = '';
  static String result1 = '';
  static String result2 = '';
  static String result3 = '';
  static String result4 = '';

  static int? recursiveTime;
  static int? memoTime;
  static int? tabTime;

  static StringBuffer buffer = StringBuffer();
  static StringBuffer buffer1 = StringBuffer();
  static StringBuffer buffer2 = StringBuffer();
  static StringBuffer buffer3 = StringBuffer();
  static StringBuffer buffer4 = StringBuffer();

  StringBuffer get getBuffer => buffer;
  StringBuffer get getBuffer1 => buffer1;
  StringBuffer get getBuffer2 => buffer2;
  StringBuffer get getBuffer3 => buffer3;
  StringBuffer get getBuffer4 => buffer4;

  set setBuffer(StringBuffer value) => buffer = value;
  set setBuffer1(StringBuffer value) => buffer1 = value;
  set setBuffer2(StringBuffer value) => buffer2 = value;
  set setBuffer3(StringBuffer value) => buffer3 = value;
  set setBuffer4(StringBuffer value) => buffer4 = value;

  static int get getN => n;
  static set setN(int value) => n = value;

  static String get getResult => result;
  static String get getResult1 => result1;
  static String get getResult2 => result2;
  static String get getResult3 => result3;
  static String get getResult4 => result4;

  static set setResult(String value) => result = value;
  static set setResult1(String value) => result1 = value;
  static set setResult2(String value) => result2 = value;
  static set setResult3(String value) => result3 = value;
  static set setResult4(String value) => result4 = value;

  static int? get getRecursiveTime => recursiveTime;
  static set setRecursiveTime(int? value) => recursiveTime = value;

  static int? get getMemoTime => memoTime;
  static set setMemoTime(int? value) => memoTime = value;

  static int? get getTabTime => tabTime;
  static set setTabTime(int? value) => tabTime = value;
}
