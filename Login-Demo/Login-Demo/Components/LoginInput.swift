//
//  LoginInput.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/29.
//

import SwiftUI

struct LoginInput: View {
    
    //  输入框类型
    var inputTypeValue: inputType = .normal
    //  输入提示文字
    var placeHolder: String = ""
    
    @Binding var loginAccount: String
    @Binding var loginPassword: String
    
    //  账号提示状态
    @State private var showPhoneText: Bool = true
    //  密码提示状态
    @State private var showPasswordText: Bool = true
    
    //  输入框(普通输入框/密码输入框)
    enum inputType {
        case normal
        case password
    }
    
    var body: some View {
        if (inputTypeValue == .normal) {
            VStack(alignment: .leading) {
                TextField(placeHolder, text: $loginAccount)
                    { (value) in
                        if $loginAccount.wrappedValue.count == 11 {
                            self.showPhoneText = false
                        } else {
                            self.showPhoneText = true
                        }
                    } onCommit: {
                        if $loginAccount.wrappedValue.count == 11 {
                            self.showPhoneText = false
                        } else {
                            self.showPhoneText = true
                        }
                    }
                    .foregroundColor(hexColor(hex: 0x000000))
                    .frame(width: 250, height: 40, alignment: .center)
                    .font(.caption)
                    .textFieldStyle(
                        RoundedBorderTextFieldStyle()
                )
                if showPhoneText {
                    Text("请输入11位有效手机号")
                        .foregroundColor(hexColor(hex: 0xFF0000))
                        .font(.caption2)
                        .fontWeight(.medium)
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 0))
                }
            }
        } else if(inputTypeValue == .password) {
            VStack(alignment: .leading) {
                SecureField(placeHolder,
                            text: $loginPassword) {
                    if $loginPassword.wrappedValue.count >= 6 && $loginPassword.wrappedValue.count <= 16 {
                        self.showPasswordText = false
                    } else {
                        self.showPasswordText = true
                    }
                }
                    .foregroundColor(hexColor(hex: 0x000000))
                    .frame(width: 250, height: 40, alignment: .center)
                    .font(.caption)
                    .textFieldStyle(
                        RoundedBorderTextFieldStyle()
                    )
                if showPasswordText {
                    Text("请输入6-16位密码")
                        .foregroundColor(hexColor(hex: 0xFF0000))
                        .font(.caption2)
                        .fontWeight(.medium)
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 0))
                }
            }
        }
    }
}

struct LoginInput_Previews: PreviewProvider {
    static var previews: some View {
        LoginInput(inputTypeValue: .normal, placeHolder: "请输入手机号", loginAccount: .constant(""), loginPassword: .constant(""))
    }
}
