class NumberClassifier {
  let classification:NumberClassification

  init(number:Int) {
    var factors = NumberClassifier.factorsOf(number)
    factors.remove(number)
    var sum = Array(factors).reduce(0, combine:+)

    if sum < number {
      classification = .Deficient
    } else if sum > number {
      classification = .Abundant
    } else {
      classification = .Perfect
    }
  }

  private class func factorsOf(number:Int) -> Set<Int> {
    var factors = Set<Int>()
    for possibleFactor in 1...number {
      if (number % possibleFactor) == 0 {
        factors.insert(possibleFactor)
      }
    }
    return factors
  }
}

enum NumberClassification {
  case Deficient
  case Perfect
  case Abundant
}