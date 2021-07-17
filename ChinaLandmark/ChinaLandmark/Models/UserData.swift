//
//  UserData.swift
//  ChinaLandmark
//
//  Created by 王潇 on 2021/7/17.
//

import SwiftUI
import Combine

//SwiftUI监视可观察对象（ObservableObject）的任何数据更改，并在数据更改后刷新视图。
final class UserData: ObservableObject{
    //当数据变化时发送更新后的数据给视图，视图就会刷新
    @Published var userLandmarks = landmarks
}
