extension Array {
  func accumulate<NewType>(function: (Element) -> NewType) -> Array<NewType>{
    var newArray = Array<NewType>()

    for element in self {
      newArray.append(function(element))
    }
    return newArray
  }
}
