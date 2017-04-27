import Foundation

struct Parser {

  func parse(hex: String) -> String? {
    var name = ""
    var minDiff: Float = Float.greatestFiniteMagnitude
    let rgb = Converter().rgb(hex: hex)
    let hsl = Converter().hsl(rgb: rgb)

    mapping.forEach({ key, value in
      let rgb2 = Converter().rgb(hex: key)
      let hsl2 = Converter().hsl(rgb: rgb)
      let diffRGB = pow(rgb.r - rgb2.r, 2) + pow(rgb.g - rgb2.g, 2) + pow(rgb.b - rgb2.b, 2)
      let diffHSL = pow(hsl.h - hsl2.h, 2) + pow(hsl.s - hsl2.s, 2) + pow(hsl.l - hsl2.l, 2)
      let diff = diffRGB + diffHSL * 2

      if diff < minDiff {
        minDiff = diff
        name = value
      }
    })

    return name
  }
}
