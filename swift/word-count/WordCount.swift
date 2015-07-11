import Foundation

class WordCount {
  let inputString:String
  
  init(words:String) {
    inputString = words
  }
  
  func count() -> [String:Int] {
    var runningCount:[String:Int] = [:]
    for word in getWordList(inputString) {
      runningCount[word] = (runningCount[word] ?? 0) + 1
    }
    return runningCount
  }
    
  private func getWordList(input:String) -> [String] {
    var words = seperateIntoWords(input)
    words = words.map({$0.lowercaseString})
    words = words.map(stripPunctuation)
    words = words.filter({$0 != ""})
    return words
  }

  private func seperateIntoWords(input:String) -> [String] {
    let whitespaceChars = NSCharacterSet.whitespaceAndNewlineCharacterSet()
    return input.componentsSeparatedByCharactersInSet(whitespaceChars)
  }

  private func stripPunctuation(word:String) -> String {
    let unwantedChars = NSCharacterSet.alphanumericCharacterSet().invertedSet
    return word.stringByTrimmingCharactersInSet(unwantedChars)
  }
}