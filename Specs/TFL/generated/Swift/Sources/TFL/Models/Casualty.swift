//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class Casualty: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var age: Int?

    public var ageBand: String?

    public var `class`: String?

    public var mode: String?

    public var severity: String?

    public init(age: Int? = nil, ageBand: String? = nil, `class`: String? = nil, mode: String? = nil, severity: String? = nil) {
        self.age = age
        self.ageBand = ageBand
        self.`class` = `class`
        self.mode = mode
        self.severity = severity
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        age = jsonDictionary.json(atKeyPath: "age")
        ageBand = jsonDictionary.json(atKeyPath: "ageBand")
        `class` = jsonDictionary.json(atKeyPath: "class")
        mode = jsonDictionary.json(atKeyPath: "mode")
        severity = jsonDictionary.json(atKeyPath: "severity")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let age = age {
            dictionary["age"] = age
        }
        if let ageBand = ageBand {
            dictionary["ageBand"] = ageBand
        }
        if let `class` = `class` {
            dictionary["class"] = `class`
        }
        if let mode = mode {
            dictionary["mode"] = mode
        }
        if let severity = severity {
            dictionary["severity"] = severity
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
