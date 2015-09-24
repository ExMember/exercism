class Anagram {
  let word:String
  let sorted_chars:String
  
  init(word: String) {
    self.word = word
    self.sorted_chars = String(word.lowercaseString.characters.sort())
  }
  
  func match(candidates:[String]) -> [String] {
    return candidates.filter(isAnagram)
  }
  
  private func isAnagram(candidate:String) -> Bool {
    if candidate.lowercaseString == word.lowercaseString { return false }
    return sorted_chars == String(candidate.lowercaseString.characters.sort())
  }
}