//
//  Landmark.swift
//  WorldLandmark
//
//  Created by 王潇 on 2021/7/14.
//

import SwiftUI

struct Landmark : Identifiable {
    var id = UUID()
    var name: String
    var EnglishName: String
    var location: String
    
    var imageName: String {return EnglishName}
    var thumbnailName: String{return "\(EnglishName)(Thumb)"}
    
}

let landmarks = [
    Landmark(name: "长城", EnglishName: "Great Wall", location: "北京"),
    Landmark(name: "自由女神像", EnglishName: "Statue of Liberty", location: "纽约"),
    Landmark(name: "大本钟", EnglishName: "Big Ben", location: "伦敦"),
    Landmark(name: "埃菲尔铁塔", EnglishName: "Eiffel Tower", location: "巴黎"),
    Landmark(name: "耶稣基督像", EnglishName: "Jesus Christ", location: "里约热内卢"),
    Landmark(name: "比萨斜塔", EnglishName: "Leaning Tower of Pisa", location: "比萨"),
    Landmark(name: "莫斯科红场", EnglishName: "Red Square in Moscow", location: "莫斯科"),
    Landmark(name: "泰姬陵", EnglishName: "Taj Mahal", location: "阿格拉"),
    Landmark(name: "荷兰风车", EnglishName: "Windmill", location: "阿姆斯特丹"),
]
