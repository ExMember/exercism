class Anagram {
  let word:String
  let charCount:[Character:Int]
  
  init(word: String){
    self.word = word
    self.charCount = Anagram.createCharCount(word)
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
    let candidateCharCount = Anagram.createCharCount(candidate)
    return candidateCharCount == self.charCount
  }
}