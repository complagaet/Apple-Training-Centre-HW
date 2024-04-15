//@@@@@@@@@@@@@@@@@@@@@
//       Task 1
//@@@@@@@@@@@@@@@@@@@@@

class Library {
    var catalog: [Book]
    
    init() {
        self.catalog = []
    }
    
    func addBook(_ book: Book) {
        catalog.append(book)
    }
    
    func removeBook(_ book: Book) {
        if let index = catalog.firstIndex(where: { $0.title == book.title }) {
            catalog.remove(at: index)
        }
    }
    
    func findBook(byTitle title: String) -> Book? {
        return catalog.first(where: { $0.title == title })
    }
    
    func findBook(byAuthor author: String) -> Book? {
        return catalog.first(where: { $0.author == author })
    }
}

struct Book {
    let title: String
    let author: String
}

print("------ Task 1 ------")
let library = Library()
library.addBook(Book(title: "Harry Potter", author: "J.K. Rowling"))
library.addBook(Book(title: "Lord of the Rings", author: "J.R.R. Tolkien"))

if let foundBook = library.findBook(byTitle: "Harry Potter") {
    print("Found book: \(foundBook.title) by \(foundBook.author)")
}

//@@@@@@@@@@@@@@@@@@@@@
//       Task 2
//@@@@@@@@@@@@@@@@@@@@@

class Task {
    var title: String
    var description: String
    var status: String
    
    init(title: String, description: String, status: String) {
        self.title = title
        self.description = description
        self.status = status
    }
    
    func changeStatus(_ newStatus: String) {
        status = newStatus
    }
    
    func displayInfo() {
        print("Title: \(title)")
        print("Description: \(description)")
        print("Status: \(status)\n------")
    }
}

print("\n------ Task 2 ------")
let task = Task(title: "Implement Feature", description: "Add new functionality to the app", status: "In Progress")
task.displayInfo()
task.changeStatus("Completed")
task.displayInfo()

//@@@@@@@@@@@@@@@@@@@@@
//       Task 3
//@@@@@@@@@@@@@@@@@@@@@

class Shop {
    var inventory: [Product]
    
    init() {
        self.inventory = []
    }
    
    func addProduct(_ product: Product) {
        inventory.append(product)
    }
    
    func removeProduct(_ product: Product) {
        if let index = inventory.firstIndex(where: { $0.name == product.name }) {
            inventory.remove(at: index)
        }
    }
    
    func findProduct(byName name: String) -> Product? {
        return inventory.first(where: { $0.name == name })
    }
    
    func findProduct(byCategory category: String) -> [Product] {
        return inventory.filter({ $0.category == category })
    }
}

struct Product {
    let name: String
    let price: Double
    let quantity: Int
    let category: String
}

print("\n------ Task 3 ------")
let shop = Shop()
shop.addProduct(Product(name: "iPhone", price: 999.99, quantity: 10, category: "Electronics"))
shop.addProduct(Product(name: "MacBook", price: 1499.99, quantity: 5, category: "Electronics"))

if let foundProduct = shop.findProduct(byName: "iPhone") {
    print("Found product: \(foundProduct.name), \(foundProduct.price), \(foundProduct.quantity), \(foundProduct.category)")
}

//@@@@@@@@@@@@@@@@@@@@@
//       Task 4
//@@@@@@@@@@@@@@@@@@@@@

class Bank {
    var clients: [Client]
    
    init() {
        self.clients = []
    }
    
    func openAccount(for client: Client) {
        clients.append(client)
    }
    
    func closeAccount(for client: Client) {
        if let index = clients.firstIndex(where: { $0.name == client.name }) {
            clients.remove(at: index)
        }
    }
    
    func transferMoney(from sourceClient: Client, to destinationClient: Client, amount: Double) {
        if let sourceIndex = clients.firstIndex(where: { $0.name == sourceClient.name }),
           let destinationIndex = clients.firstIndex(where: { $0.name == destinationClient.name }) {
            clients[sourceIndex].account -= amount
            clients[destinationIndex].account += amount
        }
    }
}

struct Client {
    let name: String
    var account: Double
}

print("\n------ Task 4 ------")
let bank = Bank()
bank.openAccount(for: Client(name: "Alice", account: 1000))
bank.openAccount(for: Client(name: "Bob", account: 500))

bank.transferMoney(from: Client(name: "Alice", account: 0), to: Client(name: "Bob", account: 0), amount: 200)

//@@@@@@@@@@@@@@@@@@@@@
//       Task 5
//@@@@@@@@@@@@@@@@@@@@@

class Game {
    var players: [Player]
    
    init() {
        self.players = []
    }
    
    func addPlayer(_ player: Player) {
        players.append(player)
    }
    
    func removePlayer(_ player: Player) {
        if let index = players.firstIndex(where: { $0.name == player.name }) {
            players.remove(at: index)
        }
    }
    
    func determineWinner() -> Player? {
        return players.max(by: { $0.score < $1.score })
    }
}

struct Player {
    let name: String
    var score: Int
}

print("\n------ Task 5 ------")
let game = Game()
game.addPlayer(Player(name: "Player 1", score: 100))
game.addPlayer(Player(name: "Player 2", score: 150))
game.addPlayer(Player(name: "Player 3", score: 120))

if let winner = game.determineWinner() {
    print("Winner: \(winner.name) with score \(winner.score)")
}
