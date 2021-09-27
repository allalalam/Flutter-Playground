import 'package:flutter_test/flutter_test.dart';

void main() {
	test("Classes", () {
	    final House myHouse = House();
	    expect(myHouse.roomAmount, 6);
	    expect(myHouse.getIsWindowOpen(), false);
	    
	    myHouse.setIsWindowOpen(true);
	    myHouse.roomAmount = 8;
	    expect(myHouse.getIsWindowOpen(), true);
	});
	
	test("Cube test", () {
	    final myCube = Cube(5);
	    
	    myCube.setSideLength(4);
	    expect(myCube.getVolume(), 64);
	});
}

class House {
	var roomAmount = 6;
	bool _isWindowOpen = false; // private
	
	void setIsWindowOpen(bool isOpen) {
		_isWindowOpen = isOpen;
	}
	
	bool getIsWindowOpen() {
		return _isWindowOpen;
	}
	
	setRoomAmount(int newRoomAmount) {
		
		roomAmount = newRoomAmount;
	}
	
}

class Cube {
	double sideLength = 5;
	double _volume = 125;
	
	Cube(double sideLength) {
		setSideLength(sideLength);
	}
	
	void setSideLength(double newLength) {
		_volume = newLength * newLength * newLength;
		sideLength = newLength;
	}
	
	double getVolume() {
		return _volume;
	}
	
}
