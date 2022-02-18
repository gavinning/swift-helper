//
// Created by gavinning on 2022/2/18.
//

import XCTest
@testable import Helper

final class EncodableTests: XCTestCase {

    struct Person: Encodable {
        var name: String
        var age: Int
    }

    struct User: Decodable {
        var name: String
        var age: Int
    }

    func testDecode() throws {
        let tom = Person(name: "tom", age: 21)
        let user = try tom.decode(User.self)
        XCTAssertEqual(user.name, tom.name)
        XCTAssertEqual(user.age, tom.age)
    }
}
