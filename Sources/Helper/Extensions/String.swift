//
// Created by gavinning on 2022/1/7.
//
import Foundation

let HTTP = "http://"
let HTTPS = "https://"

public extension String {
  static var empty = ""

  var isBlank: Bool {
    isEmpty || allSatisfy { $0.isWhitespace }
  }

  var isHttp: Bool {
    trim().starts(with: HTTP)
  }

  var isHttps: Bool {
    trim().starts(with: HTTPS)
  }

  var isHttpOrHttps: Bool {
    isHttp || isHttps
  }

  func trim() -> String {
    var resultString = trimmingCharacters(in: CharacterSet.whitespaces)
    resultString = resultString.trimmingCharacters(in: CharacterSet.newlines)
    return resultString
  }

  func toInt() -> Int? {
    Int(self)
  }

  func toHttp() -> String {
    HTTP + self
  }

  func toHttps() -> String {
    HTTPS + self
  }

  func match(_ pattern: String) -> Bool {
    do {
      let RE = try NSRegularExpression(pattern: pattern, options: .caseInsensitive)
      let matches = RE.matches(in: self, options: .reportProgress, range: NSRange(location: 0, length: count))
      return matches.count > 0
    }
    catch {
      return false
    }
  }
}