//
// Created by gavinning on 2021/11/26.
//
import Foundation

public extension Optional {
  var isNil: Bool { self == nil }
  var isReal: Bool { !isNil }
}

public extension Optional where Wrapped == String {
  var isBlank: Bool {
    self?.isBlank ?? true
  }
}
