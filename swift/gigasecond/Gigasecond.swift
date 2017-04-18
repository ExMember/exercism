import Foundation

class Gigasecond {
  class func from(_ dateString:String) -> Date {
    let fromDate = dateFromString(dateString)
    return fromDate.addingTimeInterval(GIGASECOND)
  }
  
  fileprivate static let GIGASECOND:TimeInterval = pow(10, 9)
  
  fileprivate class func dateFromString(_ dateString:String) -> Date {
    let dateFormatter = DateFormatter()
    dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
    dateFormatter.dateFormat = "yyy-MM-dd'T'HH:mm:ss"
    let date = dateFormatter.date(from: dateString)
    return date ?? Date.distantFuture 
  }
}
