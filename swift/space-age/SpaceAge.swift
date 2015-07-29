import Foundation

class SpaceAge {
  let seconds:Int
  
  init(_ secs:Int) {
   seconds = secs
  }
  
  var onEarth:Double {
    return roundToTwoDecimalPlaces(Double(seconds) / 31557600.0)
  }
  
  var onMercury:Double {
    return roundToTwoDecimalPlaces(onEarth / 0.2408467)
  }
  
  var onVenus:Double {
    return roundToTwoDecimalPlaces(onEarth / 0.61519726 )
  }
  
  var onMars:Double {
    return roundToTwoDecimalPlaces(onEarth / 1.8808158 )
  }
  
  var onJupiter:Double {
    return roundToTwoDecimalPlaces(onEarth / 11.862615 )
  }
  
  var onSaturn:Double {
    return roundToTwoDecimalPlaces(onEarth / 29.447498 )
  }
  
  var onUranus:Double {
    return roundToTwoDecimalPlaces(onEarth / 84.016846 )
  }
  
  var onNeptune:Double {
    return roundToTwoDecimalPlaces(onEarth / 164.79132 )
  }
  
  private func roundToTwoDecimalPlaces(number:Double) -> Double {
    return round(number * 100) / 100
  }
}