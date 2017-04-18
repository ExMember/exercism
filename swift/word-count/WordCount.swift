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
    
  fileprivate func getWordList(_ input:String) -> [String] {
    var words = seperateIntoWords(input)
    words = words.map({$0.lowercased()})
    words = words.map(stripPunctuation)
    words = words.filter({$0 != ""})
    return words
  }

  fileprivate func seperateIntoWords(_ input:String) -> [String] {
    let whitespaceChars = CharacterSet.whitespacesAndNewlines
    return input.components(separatedBy: whitespaceChars)
  }

  fileprivate func stripPunctuation(_ word:String) -> String {
    let unwantedChars = CharacterSet.alphanumerics.inverted
    return word.trimmingCharacters(in: unwantedChars)
  }
}
