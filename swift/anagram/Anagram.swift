class Anagram {
  let word:String
  let charCount:[Character:Int]
  
  init(word: String){
    self.word = word
    self.charCount = Anagram.createCharCount(word)
  }
  
  func match(candidates:[String]) -> [String]{
    return candidates.filter(isAnagram)
  }
  
  private func isAnagram(candidate:String) -> Bool {
    if candidate.lowercaseString == word.lowercaseString { return false }
    let candidateCharCount = Anagram.createCharCount(candidate)
    return candidateCharCount == self.charCount
  }
  
  private class func createCharCount(word:String) -> [Character:Int] {
    var charCount = [Character:Int]()
    
    for char in word.lowercaseString {
      if let count = charCount[char] {
        charCount[char] = count + 1
      } else {
        charCount[char] = 1
      }
    }
    return charCount
  }
}