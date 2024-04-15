class Rectangle {
    var height: Int
    var width: Int
    
    init(height: Int, width: Int) {
        self.height = height
        self.width = width
    }
    
    func area() {
        print("Square's area is \(height * width)")
    }
}

class Square: Rectangle {
    init(side: Int) {
        super.init(height: side, width: side)
    }
    
    override func area() {
        print("Square's area is \(height * height)")
    }
}

var rect = Rectangle(height: 10, width: 15)
var sq = Square(side: 10)

rect.area()
sq.area()
