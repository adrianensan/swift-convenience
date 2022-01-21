import Foundation

public extension Collection where Element: Numeric {
  func sum() -> Element {
    reduce(0) { $0 + $1 }
  }
}
