class PhoneNumber {
  let normalizedNumber:String

  init(startingNumber:String){
    var number = PhoneNumber.filterNonDigits(startingNumber)
    number = PhoneNumber.fixLength(number)
    normalizedNumber = number
  }

  private class func filterNonDigits(string:String) -> String {
    var digits = Set("0123456789")
    var filteredString = ""
    for character in string {
      if digits.contains(character) {
        filteredString.append(character)
      }
    }
    return filteredString
  }

  private class func fixLength(var number:String) -> String {
    if count(number) == 11 {
      number.removeAtIndex(number.startIndex)
    }
    return number
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