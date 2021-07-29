//
//  iconData.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/27.
//

import SwiftUI

struct iconData: Identifiable {
    var id: Int
    var iconImage: String
    var iconName: String
}

let iconDatas = [
    iconData(id: 1, iconImage: "filter_icon", iconName: "滤镜"),
    iconData(id: 2, iconImage: "crop_icon", iconName: "裁剪"),
    iconData(id: 3, iconImage: "clean_icon", iconName: "去污"),
    iconData(id: 4, iconImage: "poster_icon", iconName: "海报")
]
