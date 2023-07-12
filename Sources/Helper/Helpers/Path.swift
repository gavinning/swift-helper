//
// Created by gavinning on 2022/1/6.
//

import Foundation

public struct Path {
  public var path: String
  public var dirname: String
  public var basename: String
  public let separator: Character = "/"

  public var isRelative: Bool { !isAbsolute }
  public var isAbsolute: Bool { path.first?.description == separator.description }

  public init(_ path: String) {
    self.path = path
    let tmp = path.split(separator: separator)
    basename = tmp.last?.description ?? path
    dirname = tmp.count > 1 ? tmp.first?.description ?? .empty : .empty
  }
}
