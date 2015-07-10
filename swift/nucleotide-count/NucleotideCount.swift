class DNA {
  var baseCounts = ["T": 0, "A": 0, "C": 0, "G": 0]
  var valid = true
  
  init?(strand:String) {
    countBases(strand)
    if !valid { return nil }
  }
  
  private func countBases(strand:String) {
    for base in strand {
      addBase(base)
    }
  }
  
  private func addBase(base:String) {
    if let count = baseCounts[base] {
      baseCounts[base] = count + 1
    } else {
      valid = false
    }
  }
  
  private func addBase(base:Character) {
    addBase(String(base))
  }
  
  func count(base:String) -> Int {
    return baseCounts[base] ?? 0
  }
  
  func counts() -> [String:Int] {
    return baseCounts
  }
}