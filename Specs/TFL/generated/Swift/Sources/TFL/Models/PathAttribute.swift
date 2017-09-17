//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class PathAttribute: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var name: String?

    public var value: String?

    public init(name: String? = nil, value: String? = nil) {
        self.name = name
        self.value = value
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        name = jsonDictionary.json(atKeyPath: "name")
        value = jsonDictionary.json(atKeyPath: "value")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let name = name {
            dictionary["name"] = name
        }
        if let value = value {
            dictionary["value"] = value
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
