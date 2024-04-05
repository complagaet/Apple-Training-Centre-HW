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

print(toCamelCase("hello_ogurec_kak_dela"))
print(toSnakeCase("pelmeniAreBetterThanArbuz"))
