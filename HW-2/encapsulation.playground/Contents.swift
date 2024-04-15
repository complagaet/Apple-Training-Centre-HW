//@@@@@@@@@@@@@@@@@@@@@
//       Task 1
//@@@@@@@@@@@@@@@@@@@@@

class BankAccount {
    private var balance: Double
    
    init(balance: Double) {
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

let account = BankAccount(balance: 1000.0)
print("------ Task 1 ------")
account.deposit(amount: 500.0)
account.withdraw(amount: 200.0)
account.withdraw(amount: 1500.0)

//@@@@@@@@@@@@@@@@@@@@@
//       Task 2
//@@@@@@@@@@@@@@@@@@@@@

class Student {
    private var name: String
    private var age: Int
    private var averageScore: Double
    
    init(name: String, age: Int, averageScore: Double) {
        self.name = name
        self.age = age
        self.averageScore = min(max(averageScore, 0), 5) // Ensure average score is between 0 and 5
    }
    
    func getName() -> String {
        return name
    }
    
    func setName(newName: String) {
        name = newName
    }
    
    func getAge() -> Int {
        return age
    }
    
    func setAge(newAge: Int) {
        age = newAge
    }
    
    func getAverageScore() -> Double {
        return averageScore
    }
    
    func setAverageScore(newAverageScore: Double) {
        averageScore = min(max(newAverageScore, 0), 5) // Ensure average score is between 0 and 5
    }
}

let student = Student(name: "Alice", age: 20, averageScore: 4.8)
print("\n------ Task 2 ------")
print("Student name: \(student.getName()), age: \(student.getAge()), average score: \(student.getAverageScore())")
student.setAverageScore(newAverageScore: 6.0) // Trying to set an invalid average score
print("Updated average score: \(student.getAverageScore())") // Should still be within valid range

//@@@@@@@@@@@@@@@@@@@@@
//       Task 3
//@@@@@@@@@@@@@@@@@@@@@

class Phone {
    private var phoneNumber: String
    
    init(phoneNumber: String) {
        self.phoneNumber = phoneNumber
    }
    
    func getPhoneNumber() -> String {
        return phoneNumber
    }
    
    func setPhoneNumber(newPhoneNumber: String) {
        phoneNumber = newPhoneNumber
    }
}

let phone = Phone(phoneNumber: "+1234567890")
print("\n------ Task 3 ------")
print("Phone number: \(phone.getPhoneNumber())")
phone.setPhoneNumber(newPhoneNumber: "+9876543210")
print("Updated phone number: \(phone.getPhoneNumber())")

//@@@@@@@@@@@@@@@@@@@@@
//       Task 4
//@@@@@@@@@@@@@@@@@@@@@

class Book {
    static let maxChar = 5
    private var title: String
    
    init(title: String) {
        self.title = title
    }
    
    func getTitle() -> String {
        return title
    }
    
    func setTitle(newTitle: String) {
        if newTitle.count > Book.maxChar {
            title = newTitle
        } else {
            print("Title should be longer than \(Book.maxChar) characters")
        }
    }
}

let book = Book(title: "The Great Gatsby")
print("\n------ Task 4 ------")
print("Book title: \(book.getTitle())")
book.setTitle(newTitle: "Swift") // Trying to set a short title
book.setTitle(newTitle: "The Catcher in the Rye") // Setting a valid title
print("Updated book title: \(book.getTitle())")

//@@@@@@@@@@@@@@@@@@@@@
//       Task 5
//@@@@@@@@@@@@@@@@@@@@@

class Car {
    private var brand: String
    private var model: String?
    
    init(brand: String) {
        self.brand = brand
    }
    
    func getBrand() -> String {
        return brand
    }
    
    func setModel(newModel: String) {
        if brand == "Toyota" {
            model = newModel
        } else {
            print("Cannot set model for \(brand)")
        }
    }
    
    func getModel() -> String? {
        return model
    }
}

let car = Car(brand: "Toyota")
let car1 = Car(brand: "VAZ")
print("\n------ Task 5 ------")
print("Car brand: \(car.getBrand())")
car.setModel(newModel: "Camry")
print("Car model: \(car.getModel() ?? "-")")
car1.setModel(newModel: "Civic")
