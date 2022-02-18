//
// Created by gavinning on 2022/1/7.
//

import XCTest
@testable import Helper

final class DateTests: XCTestCase {

    func testFormat() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        formatter.locale = Locale.init(identifier: "zh_CN")
        let target = formatter.date(from: date.format())
        XCTAssertEqual(date.description, target?.description)
    }
}
