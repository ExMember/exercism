class Year {

  let isLeapYear:Bool

  fileprivate class func isLeapYear(_ year:Int) -> Bool {
    if(!isDivisibleBy4(year)) {
      return false
    } else if(isDivisibleBy100(year) && !isDivisibleBy400(year)) {
      return false
    } else {
      return true
    }
  }

  fileprivate class func isDivisibleBy4(_ number:Int) -> Bool {
    return isDivisibleBy(number, divisor:4)
  }

  fileprivate class func isDivisibleBy100(_ number:Int) -> Bool {
    return isDivisibleBy(number, divisor:100)
  }

  fileprivate class func isDivisibleBy400(_ number:Int) -> Bool {
    return isDivisibleBy(number, divisor:400)
  }

  fileprivate class func isDivisibleBy(_ number:Int, divisor:Int) -> Bool {
    return (number % divisor) == 0
  }

  init(calendarYear:Int) {
    self.isLeapYear = Year.isLeapYear(calendarYear)
  }
}
