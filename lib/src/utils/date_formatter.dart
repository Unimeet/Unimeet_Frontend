String dateFormatter(date) {
  String stringDay = date.substring(0, 2);
  int integerDay = int.parse(stringDay);
  String? validDay = integerDay > 31 || integerDay < 1 ? null : stringDay;
  String stringMonth = date.substring(3, 5);
  int integerMonth = int.parse(stringMonth);
  String? validMonth =
      integerMonth > 12 || integerMonth < 1 ? null : stringMonth;

  String year = date.substring(6);
  String dateParsed = "$year-$validMonth-$validDay";
  return dateParsed;
}
