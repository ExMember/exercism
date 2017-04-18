import Foundation

class Bob {
  class func hey(_ input:String) -> String {
    if (isShouting(input)) {
      return "Woah, chill out!"

    } else if (isSilence(input)) {
      return "Fine, be that way."

    } else if (isAskingQuestion(input)) {
      return "Sure."

    } else {
      return "Whatever."
    }
  }

  fileprivate class func isShouting(_ input:String) -> Bool {
    let hasLowercaseLetters = (input != input.uppercased())
    let hasUppercaseLetters = (input != input.lowercased())
    return hasUppercaseLetters && !hasLowercaseLetters
  }

  fileprivate class func isSilence(_ input:String) -> Bool {
    let whitespaceCharacters = CharacterSet.whitespaces
    let inputWithoutWhitespace = input.trimmingCharacters(in: whitespaceCharacters)
    return inputWithoutWhitespace == ""
  }

  fileprivate class func isAskingQuestion(_ input:String) -> Bool {
    return input.hasSuffix("?")
  }
}
