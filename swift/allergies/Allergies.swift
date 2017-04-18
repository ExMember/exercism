class Allergies {
  static let eggs:UInt         = 0b00000001
  static let peanuts:UInt      = 0b00000010
  static let shellfish:UInt    = 0b00000100
  static let strawberries:UInt = 0b00001000
  static let tomatoes:UInt     = 0b00010000
  static let chocolate :UInt   = 0b00100000
  static let pollen:UInt       = 0b01000000
  static let cats:UInt         = 0b10000000

  let score:UInt
  
  init(_ score:UInt){
    self.score = score
  }

  func hasAllergy(_ allergy:UInt) -> Bool{
    return (score & allergy) != 0
  }
}
