//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class PasswordResetEmailRequest: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** The email address of the primary account profile to reset the password for. */
    public var email: String

    public init(email: String) {
        self.email = email
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        email = try jsonDictionary.json(atKeyPath: "email")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["email"] = email
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
