//
//  User.swift
//  SwiftUI-Study
//
//  Created by MoonStartMan on 2024.
//  用户数据模型，定义用户信息结构
//
//  详细说明这个文件的作用和主要功能
//
import Foundation

struct User {
    var username: String
    var prefersNotifications = true
    var prefersSeason = Season.winter
    var birthday = Date()
    
    static let `default` = Self(username: "Lebus")
    
    enum Season: String, CaseIterable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
    }
}


//单例模式
//User.default
