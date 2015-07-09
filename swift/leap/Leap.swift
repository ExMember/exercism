class Year {

  let isLeapYear: Bool

  init(calendarYear:Int) {
    func isDivisableBy(number:Int, divisor:Int) -> Bool {
      return (number % divisor) == 0
    }

    if(!isDivisableBy(calendarYear, 4)) {
      isLeapYear = false

    } else if(isDivisableBy(calendarYear, 100) && !isDivisableBy(calendarYear, 400)) {
      isLeapYear = false

    } else {
      isLeapYear = true
    }
  }
}