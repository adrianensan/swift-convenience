import Foundation

func ~=<T>(block: (T) -> Bool, value: T) -> Bool {
  block(value)
}
