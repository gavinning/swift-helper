//
// Created by gavinning on 2021/11/25.
//

import Foundation

public struct URLData {
    public var scheme: String
    public var hostname: String?
    public var port: Int?
    public var username: String?
    public var password: String?
    public var pathname: String?

    public init?(_ url: String) {
        self.init(URL(string: url.trim()))
    }

    public init?(_ url: URL?) {
        guard let uri = url, uri.scheme.isReal else {
            return nil
        }

        scheme = uri.scheme!
        hostname = uri.host
        port = uri.port
        username = uri.user
        password = uri.password?.removingPercentEncoding
        pathname = uri.path.dropFirst().description

        // 处理「M = 密码中包含@符号的场景」
        // URL处理`M`时host会出现失误，导致host值异常
        if let host = uri.host, host.contains("@") {
            hostname = host.split(separator: "@").last!.description
        }

        if pathname.isBlank {
            pathname = nil
        }
    }
}
