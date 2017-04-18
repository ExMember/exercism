class PhoneNumber {
  static let INVALID_NUMBER = "0000000000"

  let normalizedNumber:String

  init(startingNumber:String) {
    var number = PhoneNumber.filterNonDigits(startingNumber)
    number = PhoneNumber.fixLongNumber(number)
    number = PhoneNumber.fixShortNumber(number)
    normalizedNumber = number
  }

  fileprivate class func filterNonDigits(_ string:String) -> String {
    let digits = Set("0123456789".characters)
    var filteredString = ""
    for character in string.characters {
      if digits.contains(character) {
        filteredString.append(character)
      }
    }
    return filteredString
  }

  private class func fixLongNumber(_ number:String) -> String {
    var number = number
    if number.characters.count == 11 {
      let leadingDigit = number.remove(at: number.startIndex)
      if leadingDigit != "1" { number = INVALID_NUMBER }
    }
    return number
  }

  fileprivate class func fixShortNumber(_ number:String) -> String {
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
    let lastIndex = normalizedNumber.index(firstIndex, offsetBy: 2)
    return normalizedNumber[firstIndex...lastIndex]
  }

  fileprivate func exchange() -> String {
    let firstIndex = normalizedNumber.index(normalizedNumber.startIndex, offsetBy: 3)
    let lastIndex = normalizedNumber.index(firstIndex, offsetBy: 2)
    return normalizedNumber[firstIndex...lastIndex]
  }

  fileprivate func local() -> String {
    let firstIndex = normalizedNumber.index(normalizedNumber.startIndex, offsetBy: 6)
    let lastIndex = normalizedNumber.endIndex
    return normalizedNumber[firstIndex...normalizedNumber.index(before: lastIndex)]
  }

  func description() -> String {
    return "(\(areaCode())) \(exchange())-\(local())"
  }
}
