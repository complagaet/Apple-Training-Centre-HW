//@@@@@@@@@@@@@@@@@@@@@
//       Task 1
//@@@@@@@@@@@@@@@@@@@@@

func RomanNumeral(_ roman: String) -> Int {
    let values: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    var result = 0
    var prevValue = 0
    
    for char in roman.reversed() {
        if let value = values[char] {
            if value < prevValue {
                result -= value
            } else {
                result += value
            }
            prevValue = value
        }
    }
    
    return result
}

print("------ Task 1 ------")
print(RomanNumeral("MMMCMV"))
print(RomanNumeral("VII"))

//@@@@@@@@@@@@@@@@@@@@@
//       Task 2
//@@@@@@@@@@@@@@@@@@@@@

func caesarCipher(_ str: String, _ offset: Int) -> String {
    let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
    var result = ""
    for i in str {
        if alphabet.contains(i.lowercased()) {
            let letterIndexInAlphabet = alphabet.firstIndex(of: Character(i.lowercased()))!
            var letterIndexOffset = letterIndexInAlphabet + offset
            
            while letterIndexOffset > alphabet.count - 1 {
                letterIndexOffset -= alphabet.count
            }
            result += (i == Character(i.uppercased())) ? String(alphabet[letterIndexOffset]).uppercased() : String(alphabet[letterIndexOffset])
        }
        else {
            result += String(i)
        }
    }
    return result
}

print("\n------ Task 2 ------")
print(caesarCipher("middle-Outz", 2))

//@@@@@@@@@@@@@@@@@@@@@
//       Task 3
//@@@@@@@@@@@@@@@@@@@@@

func sorting(_ input: String) -> String {
    let uniqueCharacters = Set(input)
    let sortedUniqueCharacters = uniqueCharacters.sorted()
    let sortedString = String(sortedUniqueCharacters)
    return sortedString
}

// it works incorrect......... =(((((((((((((((
// i hope to fix it later

print("\n------ Task 3 ------")
print(sorting("eA2a1E"))
print(sorting("Re4r"))
print(sorting("6jnM31Q"))
print(sorting("846ZIbo"))
