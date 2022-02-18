//
// Created by gavinning on 2022/1/6.
//

import Foundation

public extension Date {

    // var description: String { format(from: "yyyy-MM-dd'T'HH:mm:ss") }

    /// 日期 -> 字符串
    func format(from dateFormat: String = "yyyy-MM-dd HH:mm:ss", local: String = "zh_CN") -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale.init(identifier: local)
        formatter.dateFormat = dateFormat
        return formatter.string(from: self)
    }
}
