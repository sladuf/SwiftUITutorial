//
//  Profile.swift
//  SwiftUITutorial
//
//  Created by Ryeong on 5/28/24.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summner = "🌞"
        case autunm = "🍂"
        case winter = "⛄️"
        
        var id: String { rawValue }
    }
}
