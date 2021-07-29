//
//  LoginState.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/28.
//

import Foundation

final class LoginState: ObservableObject {
    
    @Published var loginFlag: Bool = false  //  是否需要登录  false需要 true 不需要
    
}
