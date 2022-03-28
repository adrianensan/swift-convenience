import SwiftUI

public protocol HelloAppThemeOption: Identifiable, Codable, Equatable {
  
  static var allowsCustomization: Bool { get }
  
  static var defaultLight: Self { get }
  
  static var defaultDark: Self { get }
  
  var previewView: AnyView { get }
}

public extension HelloAppThemeOption {
  
  static var allowsCustomization: Bool { false }
  
  //var previewView: any View { Color.clear }
}
