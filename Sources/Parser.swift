import Foundation

struct Parser {

  func parse(hex: String) -> String? {
    var chosenHex = ""
    var minDiff: Float = Float.greatestFiniteMagnitude
    let hsl1 = Converter().hsl(hex: hex)

    mapping.forEach({ key, value in
      let hsl2 = Converter().hsl(hex: key)
      let diff = pow(hsl1.h - hsl2.h, 2) + pow(hsl1.s - hsl2.s, 2) + pow(hsl1.l - hsl2.l, 2)
      if diff < minDiff {
        minDiff = diff
        chosenHex = key
      }
    })

    return mapping[chosenHex]
  }
}
