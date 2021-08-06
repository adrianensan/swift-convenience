//
//  CGFloatMath.swift
//  Cat Game
//
//  Created by Adrian Ensan on 2020-09-13.
//

import SpriteKit

public extension CGFloat {
  var normalized: CGFloat { self < 0 ? -1 : 1 }
}

public extension Int {
  var normalized: Int { self < 0 ? -1 : 1 }
}
