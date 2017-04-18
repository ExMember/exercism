class Robot {
  var name:String

  init() {
    name = Robot.generateName()
  }

  func resetName() {
    self.name = Robot.generateName()
  }

  fileprivate class func generateName() -> String {
    incrementName()
    return letters() + digits()
  }

  fileprivate static let LETTERS = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ".characters)
  fileprivate static var number = 0
  fileprivate static var second_letter_index = 0
  fileprivate static var first_letter_index = 0

  fileprivate class func letters() -> String {
    return String([LETTERS[first_letter_index], LETTERS[second_letter_index]])
  }

  fileprivate class func digits() -> String {
    return String(format:"%03d", number)
  }

  fileprivate class func incrementName() {
    number += 1
    if number >= 1000 {
      number = 0
      second_letter_index += 1
    }

    if second_letter_index >= LETTERS.count {
      second_letter_index = 0
      first_letter_index += 1
    }

    if first_letter_index >= LETTERS.count {
      first_letter_index = 0
    }
  }
}
