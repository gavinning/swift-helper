//
// Created by gavinning on 2022/1/6.
//

import Foundation

public struct Path {
    var path: String
    var dirname: String
    var basename: String
    let separator: Character = "/"

    var isRelative: Bool { !isAbsolute }
    var isAbsolute: Bool { path.first?.description == separator.description }

    public init(_ path: String) {
        self.path = path
        let tmp = path.split(separator: separator)
        basename = tmp.last?.description ?? path
        dirname = tmp.count > 1 ? tmp.first?.description ?? .empty : .empty
    }
}
