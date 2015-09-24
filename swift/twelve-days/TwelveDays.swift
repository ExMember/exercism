class TwelveDaysSong {
  class func verse(verseNumber:Int) -> String {
    return "\(preamble(verseNumber)) \(giftList(verseNumber)).\n"
  }
  
  class func verses(from:Int, _ to:Int) -> String {
    var result = ""
    for verseNumber in from...to {
      result += verse(verseNumber) + "\n"
    }
    return result
  }
  
  class func sing() -> String {
    return verses(1, 12)
  }
  
  private static let ORDINALS = [1:"first", 2:"second", 3: "third", 4:"fourth",
    5:"fifth", 6:"sixth", 7:"seventh", 8:"eighth", 9:"ninth", 10:"tenth",
    11:"eleventh", 12:"twelfth"]
  
  private static let GIFTS = [12:"twelve Drummers Drumming",
    11:"eleven Pipers Piping", 10:"ten Lords-a-Leaping",
    9:"nine Ladies Dancing", 8:"eight Maids-a-Milking",
    7:"seven Swans-a-Swimming", 6:"six Geese-a-Laying", 5:"five Gold Rings",
    4:"four Calling Birds", 3:"three French Hens", 2:"two Turtle Doves",
    1:"a Partridge in a Pear Tree"]
  
  private class func preamble(day:Int) -> String {
    return "On the \(ordinal(day)) day of Christmas my true love gave to me,"
  }
  
  private class func ordinal(number:Int) -> String {
    return ORDINALS[number] ?? "\(number)th"
  }
  
  private class func giftList(day:Int) -> String {
    var gifts = giftsForDay(day)
    if gifts.count > 1 {
      gifts[gifts.count - 1] = "and " + gifts[gifts.count - 1]
    }
    return gifts.joinWithSeparator((", "))
  }
  
  private class func newGiftForDay(day:Int) -> String {
    return GIFTS[day] ?? "\(day) somethings"
  }
  
  private class func giftsForDay(day:Int) -> [String] {
    if day <= 1 {
      return [newGiftForDay(day)]
    } else {
      return [newGiftForDay(day)] + giftsForDay(day - 1)
    }
  }
}