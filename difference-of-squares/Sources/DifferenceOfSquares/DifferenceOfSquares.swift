//Solution goes in Sources

class Squares {
    
    let number : Int
    var squareOfSum : Int
    var sumOfSquares : Int
    
    var differenceOfSquares : Int {
        get {
            return self.squareOfSum - self.sumOfSquares
        }
    }

    init(_ n : Int){
        self.number = n
        self.squareOfSum = 0
        self.sumOfSquares = 0
        self.computeSquareOfSum()
        self.computeSumOfSquares()
    }
    
    func computeSquareOfSum(){
        var sum = 0
        
        for i in 1...self.number {
            sum+=i
        }
        self.squareOfSum = sum*sum
    }
    
    func computeSumOfSquares(){
        
        var square = 0
        
        for i in 1...self.number {
            square += i*i
        }
        self.sumOfSquares = square
    }
    
}
