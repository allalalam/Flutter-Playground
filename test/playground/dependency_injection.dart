import 'package:flutter_test/flutter_test.dart';

main() {
	
	test("bird test, property injection, nullable", () {
	 
		final bird = Bird();
		expect(bird.name, null);
		
		bird.name = "Kryu-krya";
		expect(bird.name, "Kryu-krya");
	});
	
	test("snake test, property injection, non-nullable", () {
	    final snake = Snake();
	    expect(snake.name, "Gadyuka");
	    
	    snake.name = "Polzuha";
	    expect(snake.name, "Polzuha");
	});
	
	test("cat test, constructor injection", () {
	    final cat = Cat("Frfr");
	    expect(cat.name, "Frfr");
	});
	
	test("Printer test, final property, constructor injection", () {
		final printer = Printer(1234);
		// printer.serialNumber = 2323; - not possible!
	});
}

class Bird {
	String? name;
}

class Snake {
	String name = 'Gadyuka';
}

class Cat {
	String name;
	Cat(this.name);
}

class Printer {
	final int serialNumber;
	
	Printer(this.serialNumber);
}