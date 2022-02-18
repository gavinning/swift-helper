//
// Created by gavinning on 2022/2/18.
//

import XCTest
@testable import Helper

final class URLDataTests: XCTestCase {

    func testURLData() {
        let REDIS_URL = "redis://localhost:6379/0"
        let DATABASE_URL = "mysql://root:123@456@localhost:3306/pathname"

        // cos://SecretId:SecretKey@Region/Bucket
        let COS = "cos://username:password@ap-shanghai/pathname"

        // wechat://appid:secret@token/encodingAesKey
        let WECHAT = "wechat://username:password@token"

        let redis = URLData(REDIS_URL)
        let mysql = URLData(DATABASE_URL)
        let cos = URLData(COS)
        let wechat = URLData(WECHAT)

        // Redis
        XCTAssertEqual(redis?.scheme, "redis")
        XCTAssertEqual(redis?.hostname, "localhost")
        XCTAssertEqual(redis?.port, 6379)
        XCTAssertEqual(redis?.username, nil)
        XCTAssertEqual(redis?.password, nil)
        XCTAssertEqual(redis?.pathname, "0")

        // MySql
        XCTAssertEqual(mysql?.scheme, "mysql")
        XCTAssertEqual(mysql?.hostname, "localhost")
        XCTAssertEqual(mysql?.port, 3306)
        XCTAssertEqual(mysql?.username, "root")
        XCTAssertEqual(mysql?.password, "123@456")
        XCTAssertEqual(mysql?.pathname, "pathname")

        // COS
        XCTAssertEqual(cos?.scheme, "cos")
        XCTAssertEqual(cos?.hostname, "ap-shanghai")
        XCTAssertEqual(cos?.port, nil)
        XCTAssertEqual(cos?.username, "username")
        XCTAssertEqual(cos?.password, "password")
        XCTAssertEqual(cos?.pathname, "pathname")

        // Wechat
        XCTAssertEqual(wechat?.scheme, "wechat")
        XCTAssertEqual(wechat?.hostname, "token")
        XCTAssertEqual(wechat?.port, nil)
        XCTAssertEqual(wechat?.username, "username")
        XCTAssertEqual(wechat?.password, "password")
        XCTAssertEqual(wechat?.pathname, nil)
    }
}
