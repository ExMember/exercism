extension Array {
  func accumulate<OldType,NewType>(function: (OldType) -> NewType) -> Array<NewType>{
    var newArray = Array<NewType>()

    for element in self {
      newArray.append(function(element as! OldType))
    }
    return newArray
  }
}
