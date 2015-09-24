class PhoneNumber {
  static let INVALID_NUMBER = "0000000000"

  let normalizedNumber:String

  init(startingNumber:String) {
    var number = PhoneNumber.filterNonDigits(startingNumber)
    number = PhoneNumber.fixLongNumber(number)
    number = PhoneNumber.fixShortNumber(number)
    normalizedNumber = number
  }

  private class func filterNonDigits(string:String) -> String {
    let digits = Set("0123456789".characters)
    var filteredString = ""
    for character in string.characters {
      if digits.contains(character) {
        filteredString.append(character)
      }
    }
    return filteredString
  }

  private class func fixLongNumber(var number:String) -> String {
    if number.characters.count == 11 {
      let leadingDigit = number.removeAtIndex(number.startIndex)
      if leadingDigit != "1" { number = INVALID_NUMBER }
    }
    return number
  }

  private class func fixShortNumber(number:String) -> String {
    if number.characters.count < 10 {
      return INVALID_NUMBER
    } else {
      return number
    }
  }

  func number() -> String {
    return normalizedNumber
  }

  func areaCode() -> String {
    let firstIndex = normalizedNumber.startIndex
    let lastIndex = firstIndex.advancedBy(2)
    return normalizedNumber[firstIndex...lastIndex]
  }

  private func exchange() -> String {
    let firstIndex = normalizedNumber.startIndex.advancedBy(3)
    let lastIndex = firstIndex.advancedBy(2)
    return normalizedNumber[firstIndex...lastIndex]
  }

  private func local() -> String {
    let firstIndex = normalizedNumber.startIndex.advancedBy(6)
    let lastIndex = normalizedNumber.endIndex
    return normalizedNumber[firstIndex...lastIndex.predecessor()]
  }

  func description() -> String {
    return "(\(areaCode())) \(exchange())-\(local())"
  }
}