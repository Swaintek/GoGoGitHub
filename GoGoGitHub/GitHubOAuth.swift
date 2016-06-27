//
//  GitHubOAuth.swift
//  GoGoGitHub
//
//  Created by David Swaintek on 6/27/16.
//  Copyright © 2016 David Swaintek. All rights reserved.
//

import Foundation

let kAccessTokenKey = "kAccessTokenKey"
let kOAuthBaseURLString = "https://github.com/login/oauth/"
let kAccessTokenRegexPattern = "access_token=([^&]+"

typealias GitHubOAuthCompletion = (success: Bool) -> ()

enum GitHubOAuthError: ErrorType {
    case MissingAccessToken(String)
    case ExtractingTokenFromString(String)
    case ExtractingTemporaryCode(String)
}

enum SaveOptions: Int {
    case userDefaults
}