class DNA {
  var bases:[String:Int]
  
  init?(strand:String){
    bases = [ "T": 0, "A": 0, "C": 0, "G": 0]
    for base in strand {
      if let count = bases[String(base)] {
        bases[String(base)] = count + 1
      } else {
        return nil
      }
    }
  }
  
  func count(base:String) -> Int {
    if let count = bases[base] {
      return count
    } else {
      return 0
    }
  }
  
  func counts() -> [String:Int] {
    return bases
  }
}