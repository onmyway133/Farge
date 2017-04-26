import XCTest
@testable import Farge

class Tests: XCTestCase {

  func testRGB() {
    let rgb = Parser().rgb(hex: "FF00FF")
    XCTAssertEqual(rgb.r, 1)
    XCTAssertEqual(rgb.g, 0)
    XCTAssertEqual(rgb.b, 1)
  }
}
