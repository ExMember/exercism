import Foundation

class Meetup {
  let year:Int
  let month:Int

  init(year:Int, month:Int){
    self.year = year
    self.month = month
  }
  
  func day(_ dayOfWeek:Int, which:String) -> MeetupDate {
    let components = DateComponents.init(calendar: Calendar.current, year: 2013, month: 5, day: 13)
    let date = components.date!
    return MeetupDate.init(date: date)
  }

  class MeetupDate {
    let date:Date
    let formatter = ISO8601DateFormatter.init();

    init(date:Date){
      self.date = date
      formatter.formatOptions = [.withYear, .withMonth, .withDay, .withDashSeparatorInDate]
    }

    var description: String {
      return formatter.string(from: date)
    }
  }
}
