class TwelveDaysSong {
  class func verse(verseNumber:Int) -> String {
    return "verse \(verseNumber)"
  }
  
  class func verses(from:Int, _ to:Int) -> String {
    return "verses \(from) through \(to)"
  }
  
  class func sing() -> String {
    return verses(1, 12)
  }
}