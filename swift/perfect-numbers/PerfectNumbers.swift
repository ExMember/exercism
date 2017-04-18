class NumberClassifier {
  let classification:NumberClassification

  init(number:Int) {
    var factors = NumberClassifier.factorsOf(number)
    factors.remove(number)
    let sum = Array(factors).reduce(0, +)

    if sum < number {
      classification = .deficient
    } else if sum > number {
      classification = .abundant
    } else {
      classification = .perfect
    }
  }

  fileprivate class func factorsOf(_ number:Int) -> Set<Int> {
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
  case deficient
  case perfect
  case abundant
}
