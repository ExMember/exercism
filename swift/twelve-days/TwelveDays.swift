class TwelveDaysSong {
  class func verse(verseNumber:Int) -> String {
    return "\(preamble(verseNumber)) \(giftList(verseNumber)).\n"
  }
  
  class func verses(from:Int, _ to:Int) -> String {
    return "verses \(from) through \(to)"
  }
  
  class func sing() -> String {
    return verses(1, 12)
  }
  
  private static let ORDINALS = [1:"first", 2:"second", 3: "third", 4:"fourth",
    5:"fifth", 6:"sixth", 7:"seventh", 8:"eighth", 9:"ninth", 10:"tenth",
    11:"eleventh", 12:"twelfth"]
  
  private class func preamble(day:Int) -> String {
    return "On the \(ordinal(day)) day of Christmas my true love gave to me,"
  }
  
  private class func ordinal(number:Int) -> String {
    return ORDINALS[number] ?? "\(number)-th"
  }
  
  private class func giftList(day:Int) -> String {
    return "a Partridge in a Pear Tree"
  }
}