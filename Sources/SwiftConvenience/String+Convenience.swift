import Foundation

extension StringProtocol {
  public subscript(i: Int) -> Character {
    self[index(startIndex, offsetBy: i)]
  }
  
  func distance(to element: Element) -> Int? {
    guard let index = firstIndex(of: element) else { return nil }
    return distance(from: startIndex, to: index)
  }
  
  func distance<S: StringProtocol>(to string: S) -> Int? {
    guard let range = range(of: string) else { return nil }
    return distance(from: startIndex, to: range.lowerBound)
  }
  
  public subscript(range: PartialRangeFrom<Int>) -> SubSequence {
    self[index(startIndex, offsetBy: range.lowerBound)...]
  }
  
  public subscript(range: PartialRangeUpTo<Int>) -> SubSequence {
    self[..<index(startIndex, offsetBy: range.upperBound)]
  }
  
  public subscript(range: PartialRangeThrough<Int>) -> SubSequence {
    self[...index(startIndex, offsetBy: range.upperBound)]
  }
  
  public subscript(range: CountableClosedRange<Int>) -> SubSequence {
    self[index(startIndex, offsetBy: range.lowerBound)...index(startIndex, offsetBy: range.upperBound)]
  }
  
  public subscript(range: CountableRange<Int>) -> SubSequence {
    self[index(startIndex, offsetBy: range.lowerBound)..<index(startIndex, offsetBy: range.upperBound)]
  }
}

extension String {
  func deletingPrefix(_ prefix: String) -> String {
    guard self.hasPrefix(prefix) else { return self }
    return String(dropFirst(prefix.count))
  }
  
  func deletingSuffix(_ suffix: String) -> String {
    guard self.hasSuffix(suffix) else { return self }
    return String(dropLast(suffix.count))
  }
}
