import Foundation

class Gigasecond {
  class func from(dateString:String) -> NSDate {
    let fromDate = dateFromString(dateString)
    return fromDate.dateByAddingTimeInterval(GIGASECOND)
  }
  
  private static let GIGASECOND:NSTimeInterval = pow(10, 9)
  
  private class func dateFromString(dateString:String) -> NSDate {
    let dateFormatter = NSDateFormatter()
    dateFormatter.timeZone = NSTimeZone(forSecondsFromGMT: 0)
    dateFormatter.dateFormat = "yyy-MM-dd'T'HH:mm:ss"
    let date = dateFormatter.dateFromString(dateString)
    return date ?? NSDate.distantFuture() 
  }
}