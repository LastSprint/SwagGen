//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class ArrayTest: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var arrayArrayOfInteger: [[Int]]?

    public var arrayArrayOfModel: [[ReadOnlyFirst]]?

    public var arrayOfString: [String]?

    public init(arrayArrayOfInteger: [[Int]]? = nil, arrayArrayOfModel: [[ReadOnlyFirst]]? = nil, arrayOfString: [String]? = nil) {
        self.arrayArrayOfInteger = arrayArrayOfInteger
        self.arrayArrayOfModel = arrayArrayOfModel
        self.arrayOfString = arrayOfString
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        arrayArrayOfInteger = jsonDictionary.json(atKeyPath: "array_array_of_integer")
        arrayArrayOfModel = jsonDictionary.json(atKeyPath: "array_array_of_model")
        arrayOfString = jsonDictionary.json(atKeyPath: "array_of_string")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let arrayArrayOfInteger = arrayArrayOfInteger?.map({ $0.encode() }) {
            dictionary["array_array_of_integer"] = arrayArrayOfInteger
        }
        if let arrayArrayOfModel = arrayArrayOfModel?.map({ $0.encode() }) {
            dictionary["array_array_of_model"] = arrayArrayOfModel
        }
        if let arrayOfString = arrayOfString {
            dictionary["array_of_string"] = arrayOfString
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
