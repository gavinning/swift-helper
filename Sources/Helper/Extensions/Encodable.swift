//
// Created by gavinning on 2021/11/23.
//

import Foundation

public extension Encodable {

    func decode<T: Decodable>(_ to: T.Type = T.self) throws -> T {
        let encoder = JSONEncoder()
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .useDefaultKeys
        return try decoder.decode(T.self, from: encoder.encode(self))
    }
}
