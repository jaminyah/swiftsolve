import Foundation

func fib(_ n: Int) -> Int {
    if n <= 1 {
        return n
    }
    
    var F:[Int] = [Int]()
    var j = 0
    while j < n + 1 {
        F.append(-1)
        j += 1
    }
    
    F[0] = 0
    F[1] = 1
    var i = 2
    while i < n + 1 {
        F[i] = F[i - 2] + F[i - 1]
        i = i + 1
    }
    
    return F[n]
}


var f = fib(20)
print("f: \(f)")