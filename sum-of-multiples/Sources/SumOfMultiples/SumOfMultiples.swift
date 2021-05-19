//Solution goes in Sources

class SumOfMultiples {
    
    static func toLimit(_ limit : Int, inMultiples : Array<Int>) -> Int {
        var multiples : Set<Int> = []
        
        for number in inMultiples {
            if number != 0{
                for i in 0...((limit-1)/number) {
                    multiples.insert(i*number)
                }
            }
        }
        
        return multiples.reduce(0, +)
    }
    
}
