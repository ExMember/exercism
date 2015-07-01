class ETL {
  class func transform(old:[Int: [String]]) -> [String: Int] {
    var new_score_table = [String: Int]()
    
    for (score, letters) in old {
      for letter in letters {
        new_score_table[letter.lowercaseString] = score
      }
    }
    return new_score_table
  }
}