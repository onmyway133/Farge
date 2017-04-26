import Foundation

public func name(hex: String) -> String {
  return Parser().parse(hex: hex)
}
