//
//  ProfileEditor.swift
//  ChinaLandmark
//
//  Created by 王潇 on 2021/7/19.
//

import SwiftUI

struct ProfileEditor: View {
    
    @Binding var profileCopy: User
    
    var body: some View {
        List{
            HStack {
                Text("昵称").bold()
                Divider()
                TextField("昵称", text: $profileCopy.username)
            }
            
            Toggle(isOn: $profileCopy.prefersNotifications, label: {
                Text("允许通知")
            })
            
            VStack(alignment: .leading){
                Text("喜欢的季节").bold()
                Picker("喜欢的季节", selection: $profileCopy.prefersNotifications) {
                    ForEach(User.Season.allCases, id: \.self) {
                        season in
                        Text(season.rawValue).tag(season.rawValue).tag(season)
                    }
                }
            }
            .padding(.top)
            
            VStack(alignment: .leading) {
                DatePicker("生日", selection: $profileCopy.birthday, displayedComponents: .date)
            }
            .padding(.top)
            
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profileCopy: .constant(.default))
    }
}
