//
//  LoginState.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/28.
//

import Foundation

final class PersonDefaultMessage: ObservableObject {
    
    @Published var toggleState: Bool = false
    @Published var userName: String = "Tom"     //  用户姓名
    @Published var userGender = userGenderType.man  //  用户性别
    @Published var userEmail:String = "Tom@163.com" //    用户邮箱
    @Published var userPhone:String = "19113984600" //    用户电话
    @Published var userAdress:String = "四川省成都市" //   用户地址
    
    enum userGenderType: String, CaseIterable {
        case man = "男"
        case woman = "女"
    }
    
}
