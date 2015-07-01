class Anagram {
  let word:String
  let sorted_chars:[Character]
  
  init(word: String){
    self.word = word
    self.sorted_chars = sorted(word.lowercaseString)
  }
  
  func match(candidates:[String]) -> [String]{
    return candidates.filter(isAnagram)
  }
  
  private func isAnagram(candidate:String) -> Bool {
    if candidate.lowercaseString == word.lowercaseString { return false }
    return sorted_chars == sorted(candidate.lowercaseString)
  }
}