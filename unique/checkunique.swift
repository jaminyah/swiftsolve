import Foundation

func checkUnique(s1: String, s2: String) -> Bool {
    var charHash = [Character:Int]()

    for chr in s1 {
        if charHash.keys.contains(chr) {
            return false
        } else {
            charHash[chr] = 1
        }
    }

    for chr in s2 {
        if charHash.keys.contains(chr) {
            return false
        } else {
            charHash[chr] = 1
        }
    }

    return true
}

var l1 = "abcde"
var l2 = "fghije"

var result = checkUnique(s1: l1, s2: l2)
print(result)