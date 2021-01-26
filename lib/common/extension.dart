import 'package:intl/intl.dart';

extension Age on String {
  int age() {
    var pattern = "dd-MM-yyyy";

    var birthDate = DateFormat(pattern).parse(this);
    var today = DateTime.now();

    return (today.year - birthDate.year);
  }
}
