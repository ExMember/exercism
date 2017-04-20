import Foundation

class Meetup {
  let firstOfMonth:Date
  let calendar = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!

  init(year:Int, month:Int){
    let components = DateComponents.init(calendar: Calendar.current, year: year, month: month, day: 1)
    firstOfMonth = components.date!
  }
  
  func day(_ dayOfWeek:Int, which:String) -> MeetupDate {
    let date = calendar.nextDate(after: firstOfMonth, matching: .weekday, value: dayOfWeek, options: [.matchNextTime])
    return MeetupDate.init(date: date!)
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
