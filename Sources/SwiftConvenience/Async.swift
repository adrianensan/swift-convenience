import Foundation

func dispatchMain(execute work: @escaping @convention(block) () -> Void) {
  if Thread.isMainThread {
    work()
  } else {
    DispatchQueue.main.async {
      work()
    }
  }
}

func dispatchMain(delay: TimeInterval, execute work: @escaping @convention(block) () -> Void) {
  DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: work)
}

func dispatchMainAsync(execute work: @escaping @convention(block) () -> Void) {
  DispatchQueue.main.async {
    work()
  }
}

func dispatchConcurrent(execute work: @escaping @convention(block) () -> Void) {
  DispatchQueue.global(qos: .userInitiated).async {
    work()
  }
}
