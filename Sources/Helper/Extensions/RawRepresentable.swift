//
// Created by gavinning on 2021/11/26.
//

import Foundation

public extension RawRepresentable where RawValue: Comparable {
    func `is`(_ raw: RawValue) -> Bool { raw == rawValue }
}
