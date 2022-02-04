import XCTest
import SwiftConvenience

final class SwiftConvenienceTests: XCTestCase {
  
  func testThreadNonAtomic() {
    @ThreadSafe var counter = 0
    
    DispatchQueue.concurrentPerform(iterations: 1_000_000) { _ in
      counter += 1
    }
    
    XCTAssertNotEqual(counter, 1_000_000)
  }
  
  func testThreadSafe() {
    @ThreadSafe var counter = 0
    
    DispatchQueue.concurrentPerform(iterations: 1_000_000) { _ in
      _counter.atomicMutate {
        $0 += 1
      }
    }
    
    XCTAssertEqual(counter, 1_000_000)
  }
  
  func testNonThreadSafeSet() {
    @ThreadSafe var set: Set<Int> = []
    
    DispatchQueue.concurrentPerform(iterations: 1_000_000) { i in
        set.insert(i)
        set.remove(i)
    }
    
    XCTAssertFalse(set.isEmpty)
  }
  
  func testThreadSafeSet() {
    @ThreadSafe var set: Set<Int> = []
    
    DispatchQueue.concurrentPerform(iterations: 1_000_000) { i in
        _set.atomicMutate { $0.insert(i) }
        _set.atomicMutate { $0.remove(i) }
    }
    
    XCTAssertTrue(set.isEmpty)
  }
}
