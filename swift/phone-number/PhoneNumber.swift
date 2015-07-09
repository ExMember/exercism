class PhoneNumber {
  let normalizedNumber:String

  init(startingNumber:String){
    normalizedNumber = PhoneNumber.filterNonDigits(startingNumber)
  }

  private class func filterNonDigits(string:String) -> String {
    var digits:Set<Character> = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
    var filteredString = ""
    for character in string {
      if digits.contains(character) {
        filteredString.append(character)
      }
    }
    return filteredString
  }

  func number() -> String {
    return normalizedNumber
  }

  func areaCode() -> String {
    return ""
  }

  func description() -> String {
    return ""
  }
}