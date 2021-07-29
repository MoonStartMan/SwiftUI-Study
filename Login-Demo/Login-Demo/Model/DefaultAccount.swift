//
//  DefaultAccount.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/28.
//

import SwiftUI
import Combine

struct LoginAccount: Identifiable{
    var id : Int
    var userName: String
    var userPassword: String
}


let loginAccounts = [
    LoginAccount(id: 1, userName: "123", userPassword: "123")
]
