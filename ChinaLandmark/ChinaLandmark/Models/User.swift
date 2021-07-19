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
