class NumberClassifier {
  let classification:NumberClassification = .Perfect
  init(number:Int) {
  }
}

enum NumberClassification {
  case Deficient
  case Perfect
  case Abundant
}