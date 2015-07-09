class Year {

  let isLeapYear:Bool

  private class func isLeapYear(year:Int) -> Bool {
    if(!isDivisibleBy4(year)) {
      return false
    } else if(isDivisibleBy100(year) && !isDivisibleBy400(year)) {
      return false
    } else {
      return true
    }
  }

  private class func isDivisibleBy4(number:Int) -> Bool {
    return isDivisibleBy(number, divisor:4)
  }

  private class func isDivisibleBy100(number:Int) -> Bool {
    return isDivisibleBy(number, divisor:100)
  }

  private class func isDivisibleBy400(number:Int) -> Bool {
    return isDivisibleBy(number, divisor:400)
  }

  private class func isDivisibleBy(number:Int, divisor:Int) -> Bool {
    return (number % divisor) == 0
  }

  init(calendarYear:Int) {
    self.isLeapYear = Year.isLeapYear(calendarYear)
  }
}