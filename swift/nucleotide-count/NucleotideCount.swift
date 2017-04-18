class DNA {
  var baseCounts = ["T": 0, "A": 0, "C": 0, "G": 0]
  var valid = true
  
  init?(strand:String) {
    countBases(strand)
    if !valid { return nil }
  }
  
  fileprivate func countBases(_ strand:String) {
    for base in strand.characters {
      addBase(base)
    }
  }
  
  fileprivate func addBase(_ base:String) {
    if let count = baseCounts[base] {
      baseCounts[base] = count + 1
    } else {
      valid = false
    }
  }
  
  fileprivate func addBase(_ base:Character) {
    addBase(String(base))
  }
  
  func count(_ base:String) -> Int {
    return baseCounts[base] ?? 0
  }
  
  func counts() -> [String:Int] {
    return baseCounts
  }
}
