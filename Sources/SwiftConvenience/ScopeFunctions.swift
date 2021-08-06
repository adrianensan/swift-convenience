import Foundation

infix operator +& : AssignmentPrecedence
@inline(__always) public func +&<Value>(_ value: Value, _ applyBlock: (inout Value) -> Void) -> Value {
  var copy = value
  applyBlock(&copy)
  return copy
}

infix operator =& : AssignmentPrecedence
@inline(__always) public func =&<Value, OutValue>(_ value: Value, _ applyBlock: (Value) -> OutValue) -> OutValue {
  return applyBlock(value)
}
