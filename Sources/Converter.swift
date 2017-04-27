import Foundation

struct Converter {

  func rgb(hex: String) -> RGB {
    let r = decimal(string: hex, from: 0, length: 2)
    let g = decimal(string: hex, from: 2, length: 2)
    let b = decimal(string: hex, from: 4, length: 2)

    return RGB(r: r, g: g, b: b)
  }

  func hsl(rgb: RGB) -> HSL {
    return HSL(h: 0, s: 0, l: 0)
  }

  // MARK: - Helper

  func decimal(string: String, from: Int, length: Int) -> Float {
    let start = string.index(string.startIndex, offsetBy: from)
    let end = string.index(start, offsetBy: length)
    let range = Range(uncheckedBounds: (start, end))
    let substring = string.substring(with: range)
    let value = UInt8(substring, radix: 16) ?? 0
    return Float(value)
  }
}
