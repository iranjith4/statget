//
//  AddSocialConnection.swift
//  statget
//
//  Created by Ranjithkumar Matheswaran on 18/01/25.
//

import Foundation
import Combine


@Observable
class AddSocialConnection {
    var allowedSocialMedias: [SocialMedia] = SocialMedia.allCases
}



enum SocialMedia: CaseIterable, Identifiable {
    
    var id: Int {
        hashValue
    }
    
    case instagram
    case twitter
    case youtube
    case medium
    case facebook
    
    var iconName: String {
        switch self {
        case .instagram:
            return "icon-instagram"
        case .twitter:
            return "icon-twitter"
        case .youtube:
            return "icon-youtube"
        case .medium:
            return "icon-medium"
        case .facebook:
            return "icon-facebook"
        }
    }
    
    var displayName: String {
        switch self {
        case .instagram:
            return "Instagram"
        case .twitter:
            return "X"
        case .youtube:
            return "Youtube"
        case .medium:
            return "Medium"
        case .facebook:
            return "Facebook"
        }
    }
}
