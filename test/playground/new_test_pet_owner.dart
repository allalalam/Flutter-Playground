import 'package:flutter_test/flutter_test.dart';

main() {
	
	test("bird test, property injection, nullable", () {
		final bird = Bird();
		expect(bird.name, null);
		
		bird.name = "Kuchikoo";
		expect(bird.name, "Kuchikoo");
	});
	
	test("snake test, property injection, non-nullable", () {
		final snake = Snake();
		expect(snake.name, "");
		
		snake.name = "Uff";
		expect(snake.name, "Uff");
	});
	
	test("cat test, constructor injection", () {
	 
		final cat = Cat("Svetr");
		expect(cat.name, "Svetr");
		
		cat.name = "Zyaku";
		expect(cat.name, "Zyaku");
		
		
	});
}

class Bird {
	
	String? name;
}

class Snake {
	
	String name = "";
}

class Cat {
	
	String name;
	Cat(this.name);
}