import 'package:flutter_test/flutter_test.dart';

main() {
	test("multiplies value by 5 if value is less than example", () {
		final result1 = noSenseFunction(7, 20);
		expect(result1, 35);
	});
	
	test("divides by 3 if value is greater than 10", () {
	    final result = noSenseFunction(21, 20);
	    expect(result, 7);
	});

	test("returns value if it's equal example", () {
	    final result = noSenseFunction(20, 20);
	    expect(result, 20);
	});
}

noSenseFunction(int a, int example) {
	if (a < example) {
		return multiply(a, 5);
	} else if (a > example) {
		return divide(a, 3);
	}
	return a;
}

int plus(int a, int b) {
	return a + b;
}

int minus(int a, int b) {
	return a - b;
}

int multiply(int a, int b) {
	return a * b;
}

double divide(int a, int b) {
	return a / b;
}