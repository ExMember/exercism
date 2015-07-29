import Foundation

class SpaceAge {
  let seconds:Int
  
  init(_ secs:Int) {
   seconds = secs
  }
  
  var onEarth:Double {
    return roundToTwoDecimalPlaces(earthAge)
  }
  
  var onMercury:Double {
    return roundToTwoDecimalPlaces(earthAge / 0.2408467)
  }
  
  var onVenus:Double {
    return roundToTwoDecimalPlaces(earthAge / 0.61519726)
  }
  
  var onMars:Double {
    return roundToTwoDecimalPlaces(earthAge / 1.8808158)
  }
  
  var onJupiter:Double {
    return roundToTwoDecimalPlaces(earthAge / 11.862615)
  }
  
  var onSaturn:Double {
    return roundToTwoDecimalPlaces(earthAge / 29.447498)
  }
  
  var onUranus:Double {
    return roundToTwoDecimalPlaces(earthAge / 84.016846)
  }
  
  var onNeptune:Double {
    return roundToTwoDecimalPlaces(earthAge / 164.79132)
  }
  
  private var earthAge:Double {
    return Double(seconds) / 31557600.0
  }
  
  private func roundToTwoDecimalPlaces(number:Double) -> Double {
    return round(number * 100) / 100
  }
}