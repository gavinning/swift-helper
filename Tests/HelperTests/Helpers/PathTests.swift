//
// Created by gavinning on 2022/2/18.
//

import XCTest
@testable import Helper

final class PathTests: XCTestCase {

    func testPath() {
        let s1 = String.empty
        let s2 = "abc"
        let s3 = "/a/b/c"
        let s4 = "a/b/c"

        let p1 = Path(s1)
        let p2 = Path(s2)
        let p3 = Path(s3)
        let p4 = Path(s4)

        XCTAssertEqual(p1.dirname, String.empty)
        XCTAssertEqual(p1.basename, String.empty)
        XCTAssertTrue(p1.isRelative)
        XCTAssertFalse(p1.isAbsolute)

        XCTAssertEqual(p2.dirname, String.empty)
        XCTAssertEqual(p2.basename, p2.path)
        XCTAssertTrue(p2.isRelative)
        XCTAssertFalse(p2.isAbsolute)

        XCTAssertEqual(p3.dirname, "a")
        XCTAssertEqual(p3.basename, "c")
        XCTAssertTrue(p3.isAbsolute)
        XCTAssertFalse(p3.isRelative)

        XCTAssertEqual(p4.dirname, "a")
        XCTAssertEqual(p4.basename, "c")
        XCTAssertTrue(p4.isRelative)
        XCTAssertFalse(p4.isAbsolute)
    }
}
