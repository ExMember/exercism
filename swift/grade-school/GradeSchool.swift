class GradeSchool {
  var db:[Int:[String]] = [:]

  func addStudent(name:String, grade:Int) -> [Int:[String]]{
    db[grade] = db[grade] ?? []
    db[grade]?.append(name)
    return db
  }

  func studentsInGrade(grade:Int) -> [String]{
    return db[grade] ?? []
  }

  func sortedRoster() -> [Int:[String]]{
    for (grade, var students) in db {
      db[grade] = sorted(students, <)
    }
    return db
  }
}