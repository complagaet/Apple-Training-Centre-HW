//@@@@@@@@@@@@@@@@@@@@@
//       Task 1
//@@@@@@@@@@@@@@@@@@@@@

func toCamelCase(_ str: String) -> String {
    var result = ""
    for i in str.split(separator: "_") {
        var k = Array(i)
        k[0] = Character(k[0].uppercased())
        result += String(k)
    }
    var ch = result.removeFirst()
    result.insert(Character(ch.lowercased()), at: result.startIndex)
    return result
}

func toSnakeCase(_ str: String) -> String {
    var result = ""
    for i in str {
        if String(i) == i.uppercased() {
            result += "_\(i.lowercased())"
        } else {
            result += String(i)
        }
    }
    return result
}

print("------ Task 1 ------")
print(toCamelCase("hello_ogurec_kak_dela"))
print(toSnakeCase("pelmeniAreBetterThanArbuz"))

//@@@@@@@@@@@@@@@@@@@@@
//       Task 2
//@@@@@@@@@@@@@@@@@@@@@

func lcmOfArray(_ array: [Int]) -> Int {
    if array.count < 3 {
        return -1
    }
    
    let firstNumber = array.first!
    
    func gcd(_ a: Int, _ b: Int) -> Int {
        var x = a
        var y = b
        while y != 0 {
            let temp = y
            y = x % y
            x = temp
        }
        return x
    }
    
    func lcm(_ a: Int, _ b: Int) -> Int {
        return a * b / gcd(a, b)
    }
    
    var result = firstNumber
    for number in array {
        result = lcm(result, number)
    }
    
    return result
}

print("\n------ Task 2 ------")
print(lcmOfArray([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
print(lcmOfArray([13, 6, 17, 18, 19, 20, 37]))
print(lcmOfArray([44, 64, 12, 17, 65]))

//@@@@@@@@@@@@@@@@@@@@@
//       Task 3
//@@@@@@@@@@@@@@@@@@@@@

func firstVowel(_ str: String) -> Int {
    let vowels = "aeiouy"
    var count = 0
    for i in str.lowercased() {
        if vowels.contains(String(i)) {
            return count
        }
        count += 1
    }
    return -1
}

print("\n------ Task 3 ------")
print(firstVowel("apple"))
print(firstVowel("hello"))
print(firstVowel("STRAWBERRY"))
print(firstVowel("pInEaPPLe"))

//@@@@@@@@@@@@@@@@@@@@@
//       Task 4
//@@@@@@@@@@@@@@@@@@@@@

func numInStr(_ array: [String]) -> [String] {
    let digits = "0123456789"
    var result: [String] = []
    for i in array {
        for j in i {
            if digits.contains(String(j)) {
                result.append(i)
                break
            }
        }
    }
    return result
}

print("\n------ Task 4 ------")
print(numInStr(["1a", "a", "2b", "b"]))
print(numInStr(["abc", "abc10"]))
print(numInStr(["abc", "ab10c", "a10bc", "bcd"]))
print(numInStr(["this is a test", "test1"]))
