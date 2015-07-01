class Anagram {
  let word:String
  let charCount:[Character:Int]
  
  init(word: String){
    self.word = word.lowercaseString
    self.charCount = Anagram.createCharCount(self.word)
  }
  
  func match(candidates:[String]) -> [String]{
    var anagrams = candidates.filter(isAnagram)
    return anagrams
  }
  
  private class func createCharCount(word:String) -> [Character:Int] {
    var charCount = [Character:Int]()
    
    for char in word {
      if let count = charCount[char] {
        charCount[char] = count + 1
      } else {
        charCount[char] = 1
      }
    }
    return charCount
  }
  
  private func isAnagram(candidate:String) -> Bool {
    var lowered_candidate = candidate.lowercaseString
    if lowered_candidate == word { return false }
    let candidateCharCount = Anagram.createCharCount(lowered_candidate)
    return candidateCharCount == self.charCount
  }
}