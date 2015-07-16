extension Array {
  func accumulate<OldType,NewType>(function: (OldType) -> NewType) -> Array<NewType>{
    var newArray = Array<NewType>()
    var oldArray = Array<OldType>()

    for element in oldArray {
      newArray.append(function(element))
    }
    return newArray
  }
}
