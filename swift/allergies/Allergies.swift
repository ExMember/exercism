class Allergies {
  static let eggs = 1
  static let peanuts = 2
  static let shellfish = 4
  static let strawberries = 8
  static let tomatoes = 16
  static let chocolate = 32
  static let pollen = 64
  static let cats = 128
  
  init(UInt){
  }

  func hasAllergy(Int) -> Bool{
    return false
  }
}