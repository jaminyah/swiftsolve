/* Greatest Common Divisor */
import Foundation

func gcd(_ p:Int, _ q:Int) -> Int {

    if q == 0 {
        return p
    }

    let r = p % q
    return gcd(q, r)
}

print(gcd(28, 21))