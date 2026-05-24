//
//  UserData.swift
//  SwiftUI-Study
//
//  Created by MoonStartMan on 2024.
//  SwiftUI基础-用户输入：用户数据模型，支持收藏功能
//
//  详细说明这个文件的作用和主要功能
//
/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A model object that stores app data.
*/

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
