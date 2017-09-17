//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class MatchedRoute: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** eg: Destination */
    public var destination: String?

    /** eg: Destination Name */
    public var destinationName: String?

    /** eg: N or S or I or O */
    public var direction: String?

    /** Name such as "72" */
    public var name: String?

    /** eg: Origination Name */
    public var originationName: String?

    /** eg: Origination */
    public var originator: String?

    /** The route code */
    public var routeCode: String?

    /** eg: Regular, Night */
    public var serviceType: String?

    public init(destination: String? = nil, destinationName: String? = nil, direction: String? = nil, name: String? = nil, originationName: String? = nil, originator: String? = nil, routeCode: String? = nil, serviceType: String? = nil) {
        self.destination = destination
        self.destinationName = destinationName
        self.direction = direction
        self.name = name
        self.originationName = originationName
        self.originator = originator
        self.routeCode = routeCode
        self.serviceType = serviceType
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        destination = jsonDictionary.json(atKeyPath: "destination")
        destinationName = jsonDictionary.json(atKeyPath: "destinationName")
        direction = jsonDictionary.json(atKeyPath: "direction")
        name = jsonDictionary.json(atKeyPath: "name")
        originationName = jsonDictionary.json(atKeyPath: "originationName")
        originator = jsonDictionary.json(atKeyPath: "originator")
        routeCode = jsonDictionary.json(atKeyPath: "routeCode")
        serviceType = jsonDictionary.json(atKeyPath: "serviceType")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let destination = destination {
            dictionary["destination"] = destination
        }
        if let destinationName = destinationName {
            dictionary["destinationName"] = destinationName
        }
        if let direction = direction {
            dictionary["direction"] = direction
        }
        if let name = name {
            dictionary["name"] = name
        }
        if let originationName = originationName {
            dictionary["originationName"] = originationName
        }
        if let originator = originator {
            dictionary["originator"] = originator
        }
        if let routeCode = routeCode {
            dictionary["routeCode"] = routeCode
        }
        if let serviceType = serviceType {
            dictionary["serviceType"] = serviceType
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
