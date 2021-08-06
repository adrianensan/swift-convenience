import Foundation

public func dispatchMain(execute work: @escaping @convention(block) () -> Void) {
  if Thread.isMainThread {
    work()
  } else {
    DispatchQueue.main.async {
      work()
    }
  }
}

public func dispatchMain(delay: TimeInterval, execute work: @escaping @convention(block) () -> Void) {
  DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: work)
}

public func dispatchMainAsync(execute work: @escaping @convention(block) () -> Void) {
  DispatchQueue.main.async {
    work()
  }
}

public func dispatchConcurrent(execute work: @escaping @convention(block) () -> Void) {
  DispatchQueue.global(qos: .userInitiated).async {
    work()
  }
}
