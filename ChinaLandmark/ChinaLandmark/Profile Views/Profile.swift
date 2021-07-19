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
    @State private var profileCopy = 
    
    var dataFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy年M月d日"
        return dateFormatter
    }
    var body: some View {
        VStack(alignment: .trailing){
            HStack {
                Button(action: {}){
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
                List{
                    HStack {
                        Text("昵称").bold()
                        Divider()
                        TextField("昵称", text: $profile.username)
                    }
                    
                    Toggle(isOn: $profile.prefersNotifications, label: {
                        Text("允许通知")
                    })
                    
                    VStack(alignment: .leading){
                        Text("喜欢的季节").bold()
                        Picker("喜欢的季节", selection: $profile.prefersNotifications) {
                            ForEach(User.Season.allCases, id: \.self) {
                                season in
                                Text(season.rawValue).tag(season.rawValue).tag(season)
                            }
                        }
                    }
                    .padding(.top)
                    
                    VStack(alignment: .leading) {
                        DatePicker("生日", selection: $profile.birthday, displayedComponents: .date)
                    }
                    .padding(.top)
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
