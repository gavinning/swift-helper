//
// Created by gavinning on 2022/2/18.
//

import XCTest
@testable import Helper

final class StringTests: XCTestCase {

    let HTTP = "http"

    func testEmpty() {
        XCTAssertEqual(String.empty, "")
    }

    func testIsBlank() {
        let str1 = ""
        let str2 = " "
        let str3 = "    "
        XCTAssertTrue(str1.isBlank)
        XCTAssertTrue(str2.isBlank)
        XCTAssertTrue(str3.isBlank)
        XCTAssertFalse(HTTP.isBlank)
    }

    func testIsHttp() {
        let url1 = "http://www.com"
        let url2 = "https://www.com"
        let url3 = "redis://www.com"

        XCTAssertFalse(HTTP.isHttp)
        XCTAssertFalse(HTTP.isHttps)
        XCTAssertFalse(HTTP.isHttpOrHttps)

        XCTAssertTrue(url1.isHttp)
        XCTAssertTrue(url2.isHttps)
        XCTAssertTrue(url1.isHttpOrHttps)
        XCTAssertTrue(url2.isHttpOrHttps)

        XCTAssertFalse(url3.isHttp)
        XCTAssertFalse(url3.isHttps)
        XCTAssertFalse(url3.isHttpOrHttps)
    }

    func testTrim() {
        let str1 = ""
        let str2 = "      "
        let str3 = "  age "
        let str4 = " a ge "

        XCTAssertEqual(String.empty, str1.trim())
        XCTAssertEqual(String.empty, str2.trim())
        XCTAssertEqual("age", str3.trim())
        XCTAssertEqual("a ge", str4.trim())
    }

    func testToInt() {
        let str1 = "1"
        XCTAssertEqual(1, str1.toInt())
    }

    func testToHttp() {
        let url = "www.com"
        XCTAssertEqual("http://www.com", url.toHttp())
        XCTAssertEqual("https://www.com", url.toHttps())
    }

    func testMatch() {
        let url = "www.com"
        XCTAssertTrue(url.match("com"))
        XCTAssertTrue(url.match("www"))
        XCTAssertTrue(url.match("www.com"))
        XCTAssertFalse(url.match("www.app.com"))
    }
}
