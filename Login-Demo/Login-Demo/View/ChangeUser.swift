//
//  ChangeUser.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/29.
//

import SwiftUI

struct ChangeUser: View {
    
    @Environment(\.presentationMode) var personMess
    
    @State var changeUser: UserMessage = UserMessage.default
    @State var oldUserMess: UserMessage = UserMessage.default
    
    var body: some View {
        ZStack {
            hexColor(hex: 0x000000)
            VStack(alignment: .leading){
                
                Spacer()
                    .frame(width: 0, height: 44)
                    
                Text("修改个人信息")
                    .foregroundColor(hexColor(hex: 0xFFFFFF))
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                
                VStack(alignment: .center) {
                    ChangeUserInput(placeHolderText: "请输入需要修改的名字", Inputtext: $changeUser.userName)
                        .padding(.bottom, 10)
                    
                    Text("请选择需要修改的性别")
                        .foregroundColor(hexColor(hex: 0xFFFFFF))
                        .font(.caption)
                    
                    Picker("请选择需要修改的姓名", selection: $changeUser.userGender) {
                        ForEach(UserMessage.userGenderType.allCases, id: \.self) {
                            type in
                            Text(type.rawValue).tag(type.rawValue).tag(type)
                        }
                    }
                        .frame(width: UIScreen.main.bounds.size.width, height: 100, alignment: .center)
                        .background(hexColor(hex: 0xFFFFFF))
                        .cornerRadius(20)
                        .padding(.bottom, 10)
                    
                    ChangeUserInput(placeHolderText: "请输入需要修改的邮箱", Inputtext: $changeUser.userEmail)
                        .padding(.bottom, 10)
                    
                    ChangeUserInput(placeHolderText: "请输入需要修改的电话", Inputtext: $changeUser.userPhone)
                        .padding(.bottom, 10)
                    
                    ChangeUserInput(placeHolderText: "请输入需要修改的地址", Inputtext: $changeUser.userAdress)
                        .padding(.bottom, 10)
                    
                    Button("提交", action: {
                        self.personMess.wrappedValue.dismiss()
                    })
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(hexColor(hex: 0xFFFFFF))
                        .cornerRadius(20)
                        .foregroundColor(hexColor(hex: 0x000000))
                }
                
                Spacer()
            }
            .padding(20)
        }
        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.height)
        .edgesIgnoringSafeArea(.all)
        .scaledToFill()
    }
}

struct ChangeUser_Previews: PreviewProvider {
    static var previews: some View {
        ChangeUser()
    }
}
