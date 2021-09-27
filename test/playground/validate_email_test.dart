import 'package:flutter_test/flutter_test.dart';

bool validateEmail(String email) {
  
  final bool isLongEnough = email.length >= 5;
  final bool isContainAtSymbol = email.contains("@");
  final bool isContainDotSymbol = email.contains(".");

  return isLongEnough && isContainAtSymbol && isContainDotSymbol;
}


main() {
  test("delivers false if the email is less then 5", () {
    final testEmail = "1234";
    final isEmailLongerOrEqualToFive = validateEmail(testEmail);
    
    expect(isEmailLongerOrEqualToFive, false);
  });
  
  test("delivers false if the email doesn't contain `@`", () {
    final testEmail = "no at symbol";
    final isEmailContainAtSymbol = validateEmail(testEmail);
    
    expect(isEmailContainAtSymbol, false);
  });

  test("delivers false if the email doesn't contain `.`", () {
    final testEmail = "no dot symbol";
    final isEmailContainDotSymbol = validateEmail(testEmail);
  
    expect(isEmailContainDotSymbol, false);
  });
}