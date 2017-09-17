//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class MSO: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var countryCode: String

    public var country: String

    public var idp: [XAny]

    public init(countryCode: String, country: String, idp: [XAny]) {
        self.countryCode = countryCode
        self.country = country
        self.idp = idp
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        countryCode = try jsonDictionary.json(atKeyPath: "countryCode")
        country = try jsonDictionary.json(atKeyPath: "country")
        idp = try jsonDictionary.json(atKeyPath: "idp")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["countryCode"] = countryCode
        dictionary["country"] = country
        dictionary["idp"] = idp.encode()
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
