//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class AdditionalPropertiesClass: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var mapOfMapProperty: [String: [String: String]]?

    public var mapProperty: [String: String]?

    public init(mapOfMapProperty: [String: [String: String]]? = nil, mapProperty: [String: String]? = nil) {
        self.mapOfMapProperty = mapOfMapProperty
        self.mapProperty = mapProperty
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        mapOfMapProperty = jsonDictionary.json(atKeyPath: "map_of_map_property")
        mapProperty = jsonDictionary.json(atKeyPath: "map_property")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let mapOfMapProperty = mapOfMapProperty?.mapValues({ $0.encode() }) {
            dictionary["map_of_map_property"] = mapOfMapProperty
        }
        if let mapProperty = mapProperty {
            dictionary["map_property"] = mapProperty
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
