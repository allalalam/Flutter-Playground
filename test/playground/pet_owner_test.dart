import 'package:flutter_test/flutter_test.dart';

// OOP (Object Oriented Programming) principles
// Abstraction
// Inheritance
// Polymorphism
// Encapsulation

// SOLID stands for:
// S - Single-responsiblity Principle
// O - Open-closed Principle
// L - Liskov Substitution Principle
// I - Interface Segregation Principle
// D - Dependency Inversion Principle

// Composition is better than Inheritance

// https://www.digitalocean.com/community/conceptual_articles/s-o-l-i-d-the-first-five-principles-of-object-oriented-design#single-responsibility-principle

void main() {
  test("Puppy test", () {
    final bobyk = Dog();
    expect(bobyk.weight, 0.5);

    bobyk.weight = 3;

    bobyk.eat(5);
    expect(bobyk.weight, 1);

    bobyk.run(10000);
    expect(bobyk.weight, 0.5);
  });

  test("Owner test", () {
    final bobyk = Dog();
    expect(bobyk is Dog, true);
    expect(bobyk is DomesticAnimal, true);
    
    final Owner owner = Owner(bobyk);

    // owner.pet = bobyk;
    expect(owner.pet, bobyk);

    // final Dog? petOfOwner = owner.pet;
    // if (petOfOwner != null) {
    //   petOfOwner.eat(5);
    // }
  });
  
  test("cat weight test", () {
      final murik = Cat();
      expect(murik.weight, 0.3);
  });
}

class Owner {
  var vafCounter = 0;
  DomesticAnimal pet;

  Owner(this.pet);
  
  void feedPets() {
    pet.eat(0.5);
  }
}

abstract class DomesticAnimal {
  double weight;

  DomesticAnimal(this.weight);

  void eat(double foodWeight);

  void makeSound() {
    print("RRrrrr");
  }

  void sleep() {
    print("I'm sleeping");
  }
}

class Xxx {
  void makeSound() {
    print("Stay away");
  }
}

abstract class RunBehavior {
  void run(double distance);

  void fight() {

  }

}

class Dog extends DomesticAnimal implements RunBehavior, Xxx {

  // Dog = this, DomesticAnimal = super;
  Dog(): super(0.5);

  @override
  void fight() {

  }

  @override
  void makeSound() {
    vaf();
  }

  @override
  void eat(double foodWeight) {
    weight = weight + foodWeight / 9;
  }

  @override
  void run(double distance) {
    weight = weight - distance * 0.00005;
  }

  // 10 vaf makes 0.5kg of eat , on every 1 vaf loose 0.001kg of weight, weight after 100 vafs
  void vaf() {
    print("vaf!");
    weight -= 0.001;
  }

  vafTimes(int times) {
    for (var index = 0; index < times; index++) {
      vaf();
    }
  }
}

class Cat extends DomesticAnimal {

  Cat() : super(0.3);
  
  @override
  void eat(double foodWeight) {
    weight = weight + foodWeight / 11;
  }

  @override
  void makeSound() {
    print("Meow");
  }
}
