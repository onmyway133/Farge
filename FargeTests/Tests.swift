import XCTest
@testable import Farge

class Tests: XCTestCase {

  func testRGB() {
    XCTAssertEqual(Converter().rgb(hex: "FFFFFF"), RGB(r: 255, g: 255, b: 255))
    XCTAssertEqual(Converter().rgb(hex: "FF69B4"), RGB(r: 255, g: 105, b: 180))
    XCTAssertEqual(Converter().rgb(hex: "DEB887"), RGB(r: 222, g: 184, b: 135))
  }
}
