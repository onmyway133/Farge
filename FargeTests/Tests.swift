import XCTest
@testable import Farge

class Tests: XCTestCase {

  func testRGB() {
    XCTAssertEqual(Converter().rgb(hex: "FFFFFF"), RGB(r: 255, g: 255, b: 255))
    XCTAssertEqual(Converter().rgb(hex: "FF69B4"), RGB(r: 255, g: 105, b: 180))
    XCTAssertEqual(Converter().rgb(hex: "DEB887"), RGB(r: 222, g: 184, b: 135))
  }

  func testHSL1() {
    let rgb = RGB(r: 255, g: 255, b: 255)
    XCTAssertEqual(Converter().hsl(rgb: rgb), HSL(h: 0, s: 0, l: 100))
  }

  func testHSL2() {
    let rgb = RGB(r: 255, g: 255, b: 0)
    XCTAssertEqual(Converter().hsl(rgb: rgb), HSL(h: 60, s: 100, l: 50))
  }

  func testHSL3() {
    let rgb = RGB(r: 174, g: 62, b: 113)
    XCTAssertEqual(Converter().hsl(rgb: rgb), HSL(h: 333, s: 47, l: 46))
  }
}
