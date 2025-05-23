//
//  UserError.swift
//  piwigoKit
//
//  Created by Eddy Lelièvre-Berna on 28/08/2022.
//  Copyright © 2022 Piwigo.org. All rights reserved.
//

import Foundation

public enum UserError: Error {
    // App errors
    case emptyUsername
    case unknownUserStatus
    case creationError
    case wrongDataFormat
}

extension UserError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .emptyUsername:
            return NSLocalizedString("CoreDataFetch_UserMissingData",
                                     comment: "Will discard a user account missing a valid username.")
        case .unknownUserStatus:
            return NSLocalizedString("CoreDataFetch_UserUnknownStatus",
                                     comment: "Failed to get Community extension parameters.\nTry logging in again.")
        case .creationError:
            return NSLocalizedString("CoreData_UserCreateFailed",
                                     comment: "Failed to create a new User object.")
        case .wrongDataFormat:
            return NSLocalizedString("CoreDataFetch_DigestError",
                                     comment: "Could not digest the fetched data.")
        }
    }
}
