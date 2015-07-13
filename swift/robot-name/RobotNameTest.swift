import XCTest

class RobotNameTest: XCTestCase {

  func robotNameIsCorrectlyFormatted(name: String) -> Bool {
    let robotNameRegex = NSRegularExpression(pattern: "\\A\\w{2}\\d{3}\\z", options: NSRegularExpressionOptions.CaseInsensitive, error: nil)
    let matches = robotNameRegex?.matchesInString(name, options: .WithoutAnchoringBounds, range: NSMakeRange(0, count(name)))

    return matches!.count > 0
  }

  func testHasName() {
    let robot = Robot()
    XCTAssert(robotNameIsCorrectlyFormatted(robot.name))
  }

  func testNameSticks() {
    let robot = Robot()
    let name = robot.name
    XCTAssertEqual(name, robot.name)
  }

  func testDifferentRobotsHaveDifferentNames() {
    let firstRobot = Robot()
    let secondRobot = Robot()
    XCTAssertNotEqual(firstRobot.name, secondRobot.name)
  }

  func testResetName() {
    var robot = Robot()
    let firstName = robot.name
    robot.resetName()
    let secondName = robot.name
    XCTAssertNotEqual(firstName, secondName)
  }

/*
  func testEnoughUniqueNames() {
    var possibleNamesCount = 1000 * 26 * 26
    var names:Set<String> = []
    for i in 1...possibleNamesCount {
      names.insert(Robot().name)
    }
    XCTAssertEqual(names.count, possibleNamesCount, "Duplicated names")
  }
*/
}
