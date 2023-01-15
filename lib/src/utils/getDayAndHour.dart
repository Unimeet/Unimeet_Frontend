Map<String, String> parseDateTime(String dateTimeString) {
  final dateTime = DateTime.parse(dateTimeString);
  return {
    'day': '${dateTime.day}/${dateTime.month}/${dateTime.year}',
    'time': '${dateTime.hour}:${dateTime.minute}:${dateTime.second}',
  };
}
