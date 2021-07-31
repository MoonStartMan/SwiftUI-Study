//
//  UserMessage.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/28.
//

import SwiftUI

struct UserMessage {
    var userName: String     //  用户姓名
    var userGender = userGenderType.man  //  用户性别
    var userEmail:String = "Tom@163.com" //    用户邮箱
    var userPhone:String = "19113984600" //    用户电话
    var userAdress:String = "四川省成都市" //   用户地址
    
    static var `default` = Self(userName: "Tom")
    
    enum userGenderType: String, CaseIterable {
        case man = "男"
        case woman = "女"
    }
}

