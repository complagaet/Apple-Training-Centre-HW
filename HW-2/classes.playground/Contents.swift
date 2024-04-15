//@@@@@@@@@@@@@@@@@@@@@
//       Task 1
//@@@@@@@@@@@@@@@@@@@@@

class Rectangle {
    let a: Int
    let b: Int
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    func area() -> Int {
        return a * b
    }
}

let rect1 = Rectangle(a: 5, b: 3)
let rect2 = Rectangle(a: 2, b: 1)
let rect3 = Rectangle(a: 6, b: 4)
print("------ Task 1 ------")
print("Areas: \(rect1.area()), \(rect2.area()), \(rect3.area())")

//@@@@@@@@@@@@@@@@@@@@@
//       Task 2
//@@@@@@@@@@@@@@@@@@@@@

class Book {
    let name: String
    let author: String
    let pub_year: Int
    
    init(name: String, author: String, pub_year: Int) {
        self.name = name
        self.author = author
        self.pub_year = pub_year
    }
    
    func printInfo() {
        print("Name: \(name),\nAuthor: \(author),\nPublishing year: \(pub_year).\n------")
    }
}

let book1 = Book(name: "Kotleta po-kievski", author: "Pavel Lukoyanov", pub_year: 2019)
let book2 = Book(name: "The greatness of the VAZ-2107", author: "Jony Ive", pub_year: 2077)
let book3 = Book(name: "Chipping people via 5G", author: "Bill Gates", pub_year: 2021)
print("\n------ Task 2 ------")
book1.printInfo()
book2.printInfo()
book3.printInfo()

//@@@@@@@@@@@@@@@@@@@@@
//       Task 3
//@@@@@@@@@@@@@@@@@@@@@

class Car {
    let brand: String
    let model: String
    let year: Int
    
    init(brand: String, model: String, year: Int) {
        self.brand = brand
        self.model = model
        self.year = year
    }
    
    func printInfo() {
        print("Brand: \(brand),\nModel: \(model),\nYear: \(year).\n------")
    }
}

let car1 = Car(brand: "Toyota", model: "Camry", year: 2015)
let car2 = Car(brand: "Honda", model: "Civic", year: 2018)
let car3 = Car(brand: "BMW", model: "X5", year: 2020)
print("\n------ Task 3 ------")
car1.printInfo()
car2.printInfo()
car3.printInfo()

//@@@@@@@@@@@@@@@@@@@@@
//       Task 4
//@@@@@@@@@@@@@@@@@@@@@

class Student {
    let name: String
    let age: Int
    let averageScore: Double
    
    init(name: String, age: Int, averageScore: Double) {
        self.name = name
        self.age = age
        self.averageScore = averageScore
    }
    
    func isExcellentStudent() -> Bool {
        return averageScore > 4.5
    }
}

let student1 = Student(name: "Alice", age: 20, averageScore: 4.8)
let student2 = Student(name: "Bob", age: 21, averageScore: 4.2)
let student3 = Student(name: "Charlie", age: 19, averageScore: 4.9)
print("\n------ Task 4 ------")
print("\(student1.name) is an excellent student: \(student1.isExcellentStudent())")
print("\(student2.name) is an excellent student: \(student2.isExcellentStudent())")
print("\(student3.name) is an excellent student: \(student3.isExcellentStudent())")

//@@@@@@@@@@@@@@@@@@@@@
//       Task 5
//@@@@@@@@@@@@@@@@@@@@@

class BankAccount {
    let accountNumber: String
    var balance: Double
    
    init(accountNumber: String, balance: Double) {
        self.accountNumber = accountNumber
        self.balance = balance
    }
    
    func deposit(amount: Double) {
        balance += amount
        print("Deposited \(amount)$, New balance: \(balance)$")
    }
    
    func withdraw(amount: Double) {
        if balance >= amount {
            balance -= amount
            print("Withdrawn \(amount)$, New balance: \(balance)$")
        } else {
            print("Insufficient balance")
        }
    }
}

let account1 = BankAccount(accountNumber: "123456789", balance: 1000.0)
print("\n------ Task 5 ------")
account1.deposit(amount: 500.0)
account1.withdraw(amount: 200.0)
account1.withdraw(amount: 1500.0)
