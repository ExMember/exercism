import Foundation

class Meetup {
  let year:Int
  let month:Int
  let calendar = Calendar.autoupdatingCurrent

  init(year:Int, month:Int){
    self.year = year
    self.month = month
  }
  
  func day(_ dayOfWeek:Int, which:String) -> MeetupDate {
    var date:Date?

    switch which{
    case "1st":
      date = nth(ordinal: 1, dayOfWeek: dayOfWeek)
    case "2nd":
      date = nth(ordinal: 2, dayOfWeek: dayOfWeek)
    case "3rd":
      date = nth(ordinal: 3, dayOfWeek: dayOfWeek)
    case "4th":
      date = nth(ordinal: 4, dayOfWeek: dayOfWeek)
    case "last":
      date = last(dayOfWeek: dayOfWeek)
    case "teenth":
      date = teenth(dayOfWeek: dayOfWeek)
    default:
        date = firstOfMonth
    }
    return MeetupDate.init(date: date)
  }

  private func teenth(dayOfWeek:Int) -> Date? {
    let components = DateComponents(calendar: calendar, weekday: dayOfWeek)
    return calendar.nextDate(after: twelfthOfMonth!, matching: components, matchingPolicy: .nextTime)
  }

  private func nth(ordinal:Int, dayOfWeek:Int) -> Date? {
    return DateComponents(calendar: calendar, year: year, month: month, weekday: dayOfWeek, weekdayOrdinal: ordinal).date
  }

  private func last(dayOfWeek:Int) -> Date? {
    let components = DateComponents(calendar: calendar, weekday: dayOfWeek)
    return calendar.nextDate(after: firstOfNextMonth!, matching: components, matchingPolicy: .nextTime, direction: .backward)
  }

  private var firstOfMonth:Date? {
    let components = DateComponents.init(calendar: calendar, year: year, month: month, day: 1)
    return components.date
  }

  private var twelfthOfMonth:Date? {
    let components = DateComponents.init(calendar: calendar, year: year, month: month, day: 12)
    return components.date
  }

  private var firstOfNextMonth:Date? {
    let components = DateComponents.init(calendar: calendar, year: year, month: month+1, day: 1)
    return components.date
  }

  class MeetupDate {
    let date:Date?
    let formatter = ISO8601DateFormatter.init();

    fileprivate init(date:Date?){
      self.date = date
      formatter.formatOptions = [.withYear, .withMonth, .withDay, .withDashSeparatorInDate]
    }

    var description: String {
      if let date = date {
        return formatter.string(from: date)
      } else {
        return ""
      }
    }
  }
}
