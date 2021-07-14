//
//  Landmark.swift
//  WorldLandmark
//
//  Created by 王潇 on 2021/7/14.
//

import SwiftUI

struct Landmark: Identifiable {
    var id = UUID()
    var name: String
    var EngLishName: String
    var location: String
    
    var imageName: String { return EngLishName}
    var thumbnailName: String { return "\(EngLishName)(Thumb)" }
}

let landmarks = [
    Landmark(name: "长城", EngLishName: "Great Wall", location: "北京"),
    Landmark(name: "自由女神像", EngLishName: "Statue of Liberty", location: "纽约"),
    Landmark(name: "大本钟", EngLishName: "Big Ben", location: "伦敦"),
    Landmark(name: "埃菲尔铁塔", EngLishName: "Eiffel Tower", location: "巴黎"),
    Landmark(name: "耶稣基督像", EngLishName: "Jesus Christ", location: "里约热内卢"),
    Landmark(name: "比萨斜塔", EngLishName: "Leaning Tower of Pisa", location: "比萨"),
    Landmark(name: "莫斯科红场", EngLishName: "Red Square in Moscow", location: "莫斯科"),
    Landmark(name: "泰姬陵", EngLishName: "Tai Mahal", location: "阿格拉"),
    Landmark(name: "荷兰风车", EngLishName: "Windmill", location: "阿姆斯特丹"),
]
