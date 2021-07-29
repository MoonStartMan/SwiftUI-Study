//
//  UserMessage.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/28.
//

import SwiftUI

struct UserMessage: Identifiable {
    var id: Int
    var userName: String    //  用户姓名
    var userGender: String  //  用户性别
    var userEmail: String //    用户邮箱
    var userPhone: String //    用户电话
    var userAdress: String //   用户地址
}

let userMessages = [
    UserMessage(id: 1, userName: "Tom", userGender: "男", userEmail: "Tom@163.com", userPhone: "19113984600", userAdress: "四川省成都市")
]
