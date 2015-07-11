class Robot {
  var name:String

  init() {
    name = Robot.generateName()
  }

  func resetName() {
    self.name = Robot.generateName()
  }

  private static let letters = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

  private class func generateName() -> String {
    incrementName()
    var nameFormat = "\(letters[first_letter_index])\(letters[second_letter_index])%03d"
    return String(format: nameFormat, number)
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

    if second_letter_index >= letters.count {
      second_letter_index = 0
      first_letter_index = first_letter_index + 1
    }

    if first_letter_index >= letters.count {
      first_letter_index = 0
    }
  }
}