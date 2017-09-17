//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class HasAccessToObject: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** Target urn */
    public var urn: String

    /** This tell if the client has access to the request */
    public var access: Bool

    /** This is for know if the client has a TryAndBuy */
    public var isTryandbuy: Bool

    /** This is for know from where us get the response
Options: CACHE_ACCESS / IDP_ACCESS / ACTIVITY_ACCESS / PERMISSION_ACCESS / ETIMEDOUT / IDP_ERROR */
    public var reason: String

    public var error: ErrorObject?

    /** If the action is PPV this is the date on the PPV will expire */
    public var expiration: Date?

    /** The response received from the IDP */
    public var idpAccess: Bool?

    public init(urn: String, access: Bool, isTryandbuy: Bool, reason: String, error: ErrorObject? = nil, expiration: Date? = nil, idpAccess: Bool? = nil) {
        self.urn = urn
        self.access = access
        self.isTryandbuy = isTryandbuy
        self.reason = reason
        self.error = error
        self.expiration = expiration
        self.idpAccess = idpAccess
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        urn = try jsonDictionary.json(atKeyPath: "urn")
        access = try jsonDictionary.json(atKeyPath: "access")
        isTryandbuy = try jsonDictionary.json(atKeyPath: "is_tryandbuy")
        reason = try jsonDictionary.json(atKeyPath: "reason")
        error = jsonDictionary.json(atKeyPath: "error")
        expiration = jsonDictionary.json(atKeyPath: "expiration")
        idpAccess = jsonDictionary.json(atKeyPath: "idp_access")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["urn"] = urn
        dictionary["access"] = access
        dictionary["is_tryandbuy"] = isTryandbuy
        dictionary["reason"] = reason
        if let error = error?.encode() {
            dictionary["error"] = error
        }
        if let expiration = expiration?.encode() {
            dictionary["expiration"] = expiration
        }
        if let idpAccess = idpAccess {
            dictionary["idp_access"] = idpAccess
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
