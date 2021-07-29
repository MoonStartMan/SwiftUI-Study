//
//  HomePageVCData.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/27.
//

import SwiftUI

struct HomePageVCData: Identifiable {
    var id: Int
    var imageName: String
}

let HomeImageDatas = [
    HomePageVCData(id: 1, imageName: "banner1"),
    HomePageVCData(id: 2, imageName: "banner2"),
    HomePageVCData(id: 3, imageName: "banner3")
]
