class Robot {
  var name:String

  init() {
    name = Robot.generateName()
  }

  func resetName() {
    self.name = Robot.generateName()
  }

  private static let LETTERS = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

  private class func generateName() -> String {
    incrementName()
    var nameFormat = "\(LETTERS[first_letter_index])\(LETTERS[second_letter_index])%03d"
    return String(format: nameFormat, number)
  }

  private class func first_letter() -> String {
    return String(LETTERS[first_letter_index])
  }

  private class func second_letter() -> String {
    return String(LETTERS[second_letter_index])
  }

  private class func numberPortion() -> String {
    return ""
  }

  private static var number = 0
  private static var second_letter_index = 0
  private static var first_letter_index = 0

  private class func incrementName() {
    number = number + 1
    if number >= 1000 {
      number = 0
      second_letter_index = second_letter_index + 1
    }

    if second_letter_index >= LETTERS.count {
      second_letter_index = 0
      first_letter_index = first_letter_index + 1
    }

    if first_letter_index >= LETTERS.count {
      first_letter_index = 0
    }
  }
}