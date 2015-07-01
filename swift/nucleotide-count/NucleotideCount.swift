class DNA {
  var baseCounts:[String:Int]
  
  init?(strand:String){
    self.baseCounts = DNA.countBases(strand) ?? [:]
    if self.baseCounts == [:] { return nil }
  }
  
  private class func countBases(strand:String) -> [String:Int]? {
    var baseCounts = ["T": 0, "A": 0, "C": 0, "G": 0]
    for base in strand {
      if let count = baseCounts[String(base)] {
        baseCounts[String(base)] = count + 1
      } else {
        return nil
      }
    }
    return baseCounts
  }
  
  func count(base:String) -> Int {
    return baseCounts[base] ?? 0
  }
  
  func counts() -> [String:Int] {
    return baseCounts
  }
}