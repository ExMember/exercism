class Anagram {
  let word:String
  let sorted_chars:String
  
  init(word: String) {
    self.word = word
    self.sorted_chars = String(word.lowercased().characters.sorted())
  }
  
  func match(_ candidates:[String]) -> [String] {
    return candidates.filter(isAnagram)
  }
  
  fileprivate func isAnagram(_ candidate:String) -> Bool {
    if candidate.lowercased() == word.lowercased() { return false }
    return sorted_chars == String(candidate.lowercased().characters.sorted())
  }
}
