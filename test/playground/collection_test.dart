import 'package:flutter_test/flutter_test.dart';

final String someName = "";

void main() {
  test("add elements to array", () {
    final array = <String>[];
    expect(array.length, 0);
    expect(array.isEmpty, true);

    array.add("one");
    array.add("two");

    expect(array.length, 2);
    expect(array.isEmpty, false);
  });

  test("access array element by index", () {
    final intArray = [1, 2];

    final xxx = intArray[0];

    if (intArray.length >= 4) {
      final yyy = intArray[3];
    }

    expect(intArray.length, 2);
    expect(xxx, 1);
    expect(intArray[1], 2);
  });

  test("iterate over elements of an array", () {
    final arrayOfIntegers = [4, 32, 3, 4, 5];

    bool isContain32 = false;
    bool isContain45 = false;

    for (final entry in arrayOfIntegers) {
      if (entry == 32) {
        isContain32 = true;
      }
      if (entry == 45) {
        isContain45 = true;
      }
    }

    expect(isContain32, true);
    expect(isContain45, false);
  });

  test("sets", () {
    final setX = <String>{"one"};

    setX.add("one");
    setX.add("two");
    setX.add("three");
    setX.add("three");

    final xxx = setX.elementAt(0);

    expect(setX.length, 3);
  });

  test("Maps", () {
    final mapX = <String, int>{
      "nameOne": 1,
      "nameTwo": 2,
      "nameThree": 3,
    };
    
    mapX["anyNewName"] = 35;
    
    var totalSum = 0;
    for (final element in mapX.entries) {
      totalSum += element.value;
    }
    
    for (final key in mapX.keys) {
      print(key);
    }
    
    for (final value in mapX.values) {
      totalSum += value;
    }

    expect(mapX.length, 4);
    expect(totalSum, 82);
  });
}

someFunc(bool boolValue) {}
