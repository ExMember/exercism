class Allergies {
  static let eggs:UInt8         = 0b00000001
  static let peanuts:UInt8      = 0b00000010
  static let shellfish:UInt8    = 0b00000100
  static let strawberries:UInt8 = 0b00001000
  static let tomatoes:UInt8     = 0b00010000
  static let chocolate :UInt8   = 0b00100000
  static let pollen:UInt8       = 0b01000000
  static let cats:UInt8         = 0b10000000
  
  init(UInt){
  }

  func hasAllergy(score:UInt) -> Bool{
    return hasAllergy(UInt8(score))
  }

  func hasAllergy(score:UInt8) -> Bool{
    return false
  }
}