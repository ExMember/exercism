class PhoneNumber {
  static let INVALID_NUMBER = "0000000000"

  let normalizedNumber:String

  init(startingNumber:String){
    var number = PhoneNumber.filterNonDigits(startingNumber)
    number = PhoneNumber.fixLongNumber(number)
    number = PhoneNumber.fixShortNumber(number)
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

  private class func fixLongNumber(var number:String) -> String {
    if count(number) == 11 {
      var leadingDigit = number.removeAtIndex(number.startIndex)
      if leadingDigit != "1" { number = INVALID_NUMBER }
    }
    return number
  }

  private class func fixShortNumber(number:String) -> String {
    if count(number) < 10 {
      return INVALID_NUMBER
    } else {
      return number
    }
  }

  func number() -> String {
    return normalizedNumber
  }

  func areaCode() -> String {
    var firstIndex = normalizedNumber.startIndex
    var lastIndex = advance(firstIndex, 2)
    return normalizedNumber[firstIndex...lastIndex]
  }

  private func exchange() -> String {
    var firstIndex = advance(normalizedNumber.startIndex, 3)
    var lastIndex = advance(firstIndex, 2)
    return normalizedNumber[firstIndex...lastIndex]
  }

  private func local() -> String {
    var firstIndex = advance(normalizedNumber.startIndex, 6)
    var lastIndex = normalizedNumber.endIndex
    return normalizedNumber[firstIndex...lastIndex.predecessor()]
  }

  func description() -> String {
    return "(\(areaCode())) \(exchange())-\(local())"
  }
}