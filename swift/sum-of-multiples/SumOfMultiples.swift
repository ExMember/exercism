class SumOfMultiples {
  class func toLimit(limit:Int, inMultiples:[Int] = [3,5]) -> Int{
    var multiples = Set<Int>()
    
    for i in 1..<limit {
      for multiple in inMultiples {
        if isDivisibleBy(i, divisor: multiple) {
          multiples.insert(i)
        }
      }
    }
    
    return sumSet(multiples)
  }

  private class func isDivisibleBy(number:Int, divisor:Int) -> Bool {
    if divisor == 0 {
      return false
    }
    return (number % divisor) == 0
  }
  
  private class func sumSet(set:Set<Int>) -> Int {
    return Array(set).reduce(0, combine: +)
  }
}