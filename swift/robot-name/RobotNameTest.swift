import XCTest

class RobotNameTest: XCTestCase {

  func robotNameIsCorrectlyFormatted(_ name: String) -> Bool {
    let robotNameRegex = try? NSRegularExpression(pattern: "\\A\\w{2}\\d{3}\\z", options: NSRegularExpression.Options.caseInsensitive)
    let matches = robotNameRegex?.matches(in: name, options: .withoutAnchoringBounds, range: NSMakeRange(0, name.characters.count))

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
    let robot = Robot()
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
