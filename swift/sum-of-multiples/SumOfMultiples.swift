class SumOfMultiples {
  class func toLimit(limit:Int, inMultiples:[Int] = [3,5]) -> Int{
    var multiples = Set<Int>()
    var factors = inMultiples.filter {$0 != 0}
    
      for multiple in factors {
        for var testNumber = multiple; testNumber < limit; testNumber += multiple {
          multiples.insert(testNumber)
        }
      }
    
    return sumSet(multiples)
  }

  private class func sumSet(set:Set<Int>) -> Int {
    return Array(set).reduce(0, combine: +)
  }
}