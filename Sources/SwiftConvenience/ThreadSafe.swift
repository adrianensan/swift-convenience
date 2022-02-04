import Foundation

@propertyWrapper
public class ThreadSafe<Value> {
  private var value: Value
  private var dispatchQueue = DispatchQueue(label: UUID().uuidString, qos: .userInitiated, attributes: [.concurrent])
  
  public init(wrappedValue: Value) {
    value = wrappedValue
  }
  
  public var wrappedValue: Value {
    get {
      dispatchQueue.sync {
        value
      }
    }
    set {
      dispatchQueue.async(flags: .barrier) {
        self.value = newValue
      }
    }
  }
  
  public func atomicMutate(_ mutation: @escaping (inout Value) -> Void) {
    dispatchQueue.async(flags: .barrier) {
      mutation(&self.value)
    }
  }
}
