import Foundation

extension Array {
  init(repeating: [Element], count: Int) {
    self.init([[Element]](repeating: repeating, count: count).flatMap{$0})
  }
  
  func repeated(count: Int) -> [Element] {
    return [Element](repeating: self, count: count)
  }
}

extension ArraySlice {
  func repeated(count: Int) -> [Element] {
    return [Element](repeating: [Element](self), count: count)
  }
}
