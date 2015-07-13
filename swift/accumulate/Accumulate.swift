extension Array {
  func accumulate<OriginalType,NewType>(function: (OriginalType -> NewType)) -> Array<NewType>{
    return Array<NewType>()
  }
}
