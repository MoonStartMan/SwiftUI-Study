import Foundation

struct User {
    var username: String
    var prefersNotifications = true
    var prefersSeason = Season.winter
    var birthday = Date()
    
    static let `default` = Self(username: "Lebus")
    
    enum Season: String, CaseIterable {
        case spring = "π·"
        case summer = "π"
        case autumn = "π"
        case winter = "βοΈ"
    }
}


//εδΎζ¨‘εΌ
//User.default
