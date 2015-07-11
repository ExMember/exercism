class Robot {
  var name:String

  init() {
    name = Robot.generateName()
  }

  func resetName() {
    self.name = Robot.generateName()
  }

  private static var number = 1
  class private func generateName() -> String {
    number = (number + 1) % 1000
    return "AA" + String(format: "%03d", number)
  }
}