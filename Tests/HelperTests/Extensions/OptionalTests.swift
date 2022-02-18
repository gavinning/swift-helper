//
// Created by gavinning on 2022/2/18.
//

import XCTest
@testable import Helper

final class OptionalTests: XCTestCase {

    func testIsNil() {
        let name: String? = nil
        let age: Int? = 21

        XCTAssertTrue(name.isNil)
        XCTAssertFalse(name.isReal)

        XCTAssertTrue(age.isReal)
        XCTAssertFalse(age.isNil)
    }

    func testIsBlank() {
        let name: String? = nil
        let title: String? = "CEO"

        XCTAssertTrue(name.isBlank)
        XCTAssertFalse(title.isBlank)
    }
}
