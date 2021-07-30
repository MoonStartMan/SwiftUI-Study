//
//  ContentView.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/24.
//

import SwiftUI

struct PersonView: View {
    
    @EnvironmentObject var personMess: PersonMessage
    @State var userMess: UserMessage
    
    let list: [[String: String]] = [
        [
            "name": "用户姓名",
            "text": UserMessage.default.userName
        ],
        [
            "name": "用户性别",
            "text": UserMessage.default.userGender.rawValue
        ],
        [
            "name": "用户邮箱",
            "text": UserMessage.default.userEmail
        ],
        [
            "name": "用户电话",
            "text": UserMessage.default.userPhone
        ],
        [
            "name": "用户地址",
            "text": UserMessage.default.userAdress
        ]
    ]
    
    var body: some View {
        ZStack {
            hexColor(hex: 0x000000)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                Group {
                    Section {
                        Text("个人中心")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(hexColor(hex: 0xFFFFFF))
                    }
                    
                    List(0 ..< list.count) { i in
                        
                        PersonViewList(titleName: .constant(list[i]["name"]!), labelValue: .constant(list[i]["text"]!))
                            .background(hexColor(hex: 0x000000))
                            .cornerRadius(10.0)
                    }
                    
                }
                
                HStack(alignment: .center) {
                    Button("修改用户信息") {
                        self.personMess.toggleState.toggle()
                    }
                    .foregroundColor(hexColor(hex: 0x000000))
                    .font(.caption)
                    .frame(width: 150, height: 60)
                    .background(hexColor(hex: 0xFFFFFF))
                    .cornerRadius(10)
                    .sheet(
                        isPresented: self.$personMess.toggleState,
                        content: {
                            ChangeUser(changeUser: .default).environmentObject(PersonMessage())
                    })
                }
                .frame(width: UIScreen.main.bounds.size.width, height: 100)
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(userMess: .default)
            .environmentObject(PersonMessage())
    }
}
