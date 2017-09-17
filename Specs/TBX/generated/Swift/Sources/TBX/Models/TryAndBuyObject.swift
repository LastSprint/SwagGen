//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class TryAndBuyObject: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var active: Bool

    public var createdAt: Date

    public var expiration: Date

    /** Number of days that the user was with tryandbuy */
    public var daysWithTryAndBuy: Double

    /** Number of the try and buy that the user had */
    public var numTryAndBuyExpired: Double

    /** Date when the last TryAndBuy finished */
    public var lastFinishedTryAndBuy: Date?

    public init(active: Bool, createdAt: Date, expiration: Date, daysWithTryAndBuy: Double, numTryAndBuyExpired: Double, lastFinishedTryAndBuy: Date? = nil) {
        self.active = active
        self.createdAt = createdAt
        self.expiration = expiration
        self.daysWithTryAndBuy = daysWithTryAndBuy
        self.numTryAndBuyExpired = numTryAndBuyExpired
        self.lastFinishedTryAndBuy = lastFinishedTryAndBuy
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        active = try jsonDictionary.json(atKeyPath: "active")
        createdAt = try jsonDictionary.json(atKeyPath: "createdAt")
        expiration = try jsonDictionary.json(atKeyPath: "expiration")
        daysWithTryAndBuy = try jsonDictionary.json(atKeyPath: "daysWithTryAndBuy")
        numTryAndBuyExpired = try jsonDictionary.json(atKeyPath: "numTryAndBuyExpired")
        lastFinishedTryAndBuy = jsonDictionary.json(atKeyPath: "lastFinishedTryAndBuy")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["active"] = active
        dictionary["createdAt"] = createdAt.encode()
        dictionary["expiration"] = expiration.encode()
        dictionary["daysWithTryAndBuy"] = daysWithTryAndBuy
        dictionary["numTryAndBuyExpired"] = numTryAndBuyExpired
        if let lastFinishedTryAndBuy = lastFinishedTryAndBuy?.encode() {
            dictionary["lastFinishedTryAndBuy"] = lastFinishedTryAndBuy
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
