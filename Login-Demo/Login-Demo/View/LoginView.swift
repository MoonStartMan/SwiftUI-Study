//
//  LoginView.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/24.
//

import SwiftUI

struct LoginView: View {
    //  展示弹框
    @State private var showAlert = false
    //  判断密码是否正确
    @State private var phoneNumber = ""
    @State private var password = ""
    
    
    
    @EnvironmentObject var loginState: PersonMessage
    
    @State private var jumpToLogin: String? = nil
    
    enum AlertType {
        case success
        case error
    }
    //  登录状态
    @State private var alertType: AlertType = .error
    
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(
                    "",
                    destination: HomeView(),
                    tag:("toLogin"),
                    selection: $jumpToLogin
                )
                VStack(alignment: .center) {
                    Image("logo")
                        .resizable()
                        .frame(width: 98.5, height: 98.5, alignment: .center)
                    
                    VStack(alignment: .trailing) {
                        LoginInput(
                            inputTypeValue: .normal,
                            placeHolder: "请输入手机号",
                            loginAccount: $phoneNumber,
                            loginPassword: .constant("")
                        )
                            .padding(.top, 40)
                        LoginInput(
                            inputTypeValue: .password,
                            placeHolder: "请输入密码",
                            loginAccount: .constant(""),
                            loginPassword: $password
                        )
                        
                        Button("忘记密码", action: {})
                            .foregroundColor(hexColor(hex: 0x9FA0A0))
                            .font(.footnote)
                    }
                    
                    Button("登录") {
                        //  验证
                        if phoneNumber != loginAccounts[0].userName || password != loginAccounts[0].userPassword {
                            self.alertType = .error
                        } else {
                            self.alertType = .success
//                            self.loginState.loginFlag = true
                        }
                        showAlert = true
                    }
                    .alert(isPresented: $showAlert, content: {
                        if alertType == .error {
                            return Alert(
                                title: Text("提示"),
                                message: Text("你所输入的账号或密码有误"),
                                dismissButton: .default(
                                    Text("确定")
                                )
                            )
                        } else {
                            return Alert(
                                title: Text("提示"),
                                message: Text("登录成功"),
                                dismissButton: .default(
                                    Text("确定"),
                                    action: {
                                        jumpToLogin = "toLogin"
                                    }
                                )
                            )
                        }
                    }).frame(width: 250, height: 40)
                    .font(.caption)
                    .foregroundColor(hexColor(hex: 0xFFFFFF))
                    .background(hexColor(hex: 0x1D5EF3))
                    .cornerRadius(20)
                    .padding(.top, 48)
                    
                    Button("注册"){}
                        .frame(width: 250, height: 40)
                        .font(.caption)
                        .foregroundColor(hexColor(hex: 0x1D5EF3))
                        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .stroke(hexColor(hex: 0x1D5EF3), lineWidth: 1)
                        )
                        .padding(.top, 8)
                    Spacer()
                    Text("注册代表您同意 ")
                        .font(.footnote)
                        .foregroundColor(hexColor(hex: 0x9FA0A0))
                        + Text("用户协议")
                        .foregroundColor(hexColor(hex: 0x1D5EF3))
                        .font(.footnote)
                        .fontWeight(.regular)
                }
            }
            .background(
                Image("bg")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            )
            .background(
                hexColor(hex: 0x000000)
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            )
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
