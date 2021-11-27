import Foundation

public extension StringProtocol {
  func distance(to element: Element) -> Int? {
    guard let index = firstIndex(of: element) else { return nil }
    return distance(from: startIndex, to: index)
  }
  
  func distance<S: StringProtocol>(to string: S) -> Int? {
    guard let range = range(of: string) else { return nil }
    return distance(from: startIndex, to: range.lowerBound)
  }
}

public extension String {
  func deletingPrefix(_ prefix: String) -> String {
    guard self.hasPrefix(prefix) else { return self }
    return String(dropFirst(prefix.count))
  }
  
  func deletingSuffix(_ suffix: String) -> String {
    guard self.hasSuffix(suffix) else { return self }
    return String(dropLast(suffix.count))
  }
}
