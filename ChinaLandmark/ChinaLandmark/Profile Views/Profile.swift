//
//  Profile.swift
//  ChinaLandmark
//
//  Created by 王潇 on 2021/7/19.
//

import SwiftUI

struct Profile: View {
    @Environment(\.editMode) var mode
    @State private var profile = User.default
    @State private var profileCopy = User.default
    
    var dataFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy年M月d日"
        return dateFormatter
    }
    var body: some View {
        VStack(alignment: .trailing){
            HStack {
                
                Button(action: {
                    self.profile = self.profileCopy
                    self.mode?.animation().wrappedValue = .inactive
                }){
                    Text("完成")
                }
                Spacer()
                EditButton()
            }
            
            if mode?.wrappedValue == .inactive{
                List{
                    Text(profile.username).font(.title).bold()
                    Text("允许通知: \(profile.prefersNotifications ? "是" : "否")")
                    Text("喜欢的季节: \(profile.prefersSeason.rawValue)")
                    //            Text("生日:\(dataFormatter.string(from: profile.birthday))")
                    Text("生日: \(profile.birthday, formatter: dataFormatter)")
                    VStack(alignment: .leading) {
                        Text("最近的徒步旅行").font(.headline)
                        HikeView(hike: hikes[0])
                    }
                }
            } else {
                ProfileEditor(profileCopy: $profileCopy)
                .onDisappear{
                    self.profileCopy = self.profile
                }
            }
        }
        .padding()
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
