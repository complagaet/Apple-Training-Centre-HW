//@@@@@@@@@@@@@@@@@@@@@
//       Task 1
//@@@@@@@@@@@@@@@@@@@@@

class Shape {
    func calculateArea() -> Double {
        return 0
    }
}

class Square: Shape {
    let side: Double
    
    init(side: Double) {
        self.side = side
    }
    
    override func calculateArea() -> Double {
        return side * side
    }
}

class Rectangle: Shape {
    let width: Double
    let height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    override func calculateArea() -> Double {
        return width * height
    }
}

class Triangle: Shape {
    let base: Double
    let height: Double
    
    init(base: Double, height: Double) {
        self.base = base
        self.height = height
    }
    
    override func calculateArea() -> Double {
        return 0.5 * base * height
    }
}

print("------ Task 1 ------")
let square = Square(side: 5)
let rectangle = Rectangle(width: 4, height: 6)
let triangle = Triangle(base: 3, height: 4)

print("Square area: \(square.calculateArea())")
print("Rectangle area: \(rectangle.calculateArea())")
print("Triangle area: \(triangle.calculateArea())")

//@@@@@@@@@@@@@@@@@@@@@
//       Task 2
//@@@@@@@@@@@@@@@@@@@@@

class Vehicle {
    func move() {
        print("Vehicle is moving")
    }
}

class Car: Vehicle {
    override func move() {
        print("Car is driving")
    }
}

class Bicycle: Vehicle {
    override func move() {
        print("Bicycle is cycling")
    }
}

class Motorcycle: Vehicle {
    override func move() {
        print("Motorcycle is riding")
    }
}

print("\n------ Task 2 ------")
let car = Car()
let bicycle = Bicycle()
let motorcycle = Motorcycle()

car.move()
bicycle.move()
motorcycle.move()

//@@@@@@@@@@@@@@@@@@@@@
//       Task 3
//@@@@@@@@@@@@@@@@@@@@@

class Animal {
    func makeSound() {
        print("Animal makes a sound")
    }
}

class Cat: Animal {
    override func makeSound() {
        print("Cat meows")
    }
}

class Dog: Animal {
    override func makeSound() {
        print("Dog barks")
    }
}

class Lion: Animal {
    override func makeSound() {
        print("Lion roars")
    }
}

print("\n------ Task 3 ------")
let cat = Cat()
let dog = Dog()
let lion = Lion()

cat.makeSound()
dog.makeSound()
lion.makeSound()

//@@@@@@@@@@@@@@@@@@@@@
//       Task 4
//@@@@@@@@@@@@@@@@@@@@@

class Fruit {
    func eat() {
        print("Fruit is eaten")
    }
}

class Apple: Fruit {
    override func eat() {
        print("Apple is eaten")
    }
}

class Pear: Fruit {
    override func eat() {
        print("Pear is eaten")
    }
}

class Orange: Fruit {
    override func eat() {
        print("Orange is eaten")
    }
}

print("\n------ Task 4 ------")
let apple = Apple()
let pear = Pear()
let orange = Orange()

apple.eat()
pear.eat()
orange.eat()

//@@@@@@@@@@@@@@@@@@@@@
//       Task 5
//@@@@@@@@@@@@@@@@@@@@@

class Figure {
    func draw() {
        print("Figure is drawn")
    }
}

class Circle: Figure {
    override func draw() {
        print("Circle is drawn")
    }
}

class Square1: Figure {
    override func draw() {
        print("Square is drawn")
    }
}

class Triangle1: Figure {
    override func draw() {
        print("Triangle is drawn")
    }
}

print("\n------ Task 5 ------")
let circle = Circle()
let squareFigure = Square1()
let triangleFigure = Triangle1()

circle.draw()
squareFigure.draw()
triangleFigure.draw()
