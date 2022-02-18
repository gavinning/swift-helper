//
// Created by gavinning on 2022/2/18.
//

import XCTest
@testable import Helper

final class RawRepresentableTests: XCTestCase {

    enum Theme: String {
        case light
        case night
    }

    func testIs() throws {
        XCTAssertTrue(Theme.light.is("light"))
        XCTAssertFalse(Theme.light.is("night"))
    }
}
