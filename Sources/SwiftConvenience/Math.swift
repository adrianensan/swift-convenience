import CoreGraphics

public func min0(_ value: Int) -> Int { max(0, value) }

public func max1(_ value: Int) -> Int { min(1, value) }

public func min0(_ value: CGFloat) -> CGFloat { max(0, value) }

public func max1(_ value: CGFloat) -> CGFloat { min(1, value) }

public func capValue(_ value: CGFloat, min minValue: CGFloat, max maxValue: CGFloat) -> CGFloat {
  min(maxValue, max(minValue, value))
}

public func capValue(_ value: Int, min minValue: Int, max maxValue: Int) -> Int {
  min(maxValue, max(minValue, value))
}

public func min0max1(_ value: CGFloat) -> CGFloat { max1(min0(value)) }
