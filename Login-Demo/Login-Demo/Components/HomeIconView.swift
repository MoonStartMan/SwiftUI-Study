//
//  HomeIconView.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/27.
//

import SwiftUI

struct HomeIconView: View {
    
    var body: some View {
        HStack {
            ForEach(iconDatas){ item in
                Spacer()
                IconItem(iconImage: item.iconImage, iconText: item.iconName)
                    .frame(width: 72, height: 84, alignment: .center)
                    .background(hexColor(hex: 0x141414))
                    .cornerRadius(8)
                Spacer()
            }
        }
    }
}

struct HomeIconView_Previews: PreviewProvider {
    static var previews: some View {
        HomeIconView()
    }
}

struct IconItem: View {
    
    var iconImage: String
    var iconText: String
    
    var body: some View {
        VStack {
            Image(iconImage)
                .resizable()
                .frame(width: 32, height: 32, alignment: .center)
            Text(iconText)
                .foregroundColor(hexColor(hex: 0xE3E3E6))
                .font(.caption)
        }
    }
}
