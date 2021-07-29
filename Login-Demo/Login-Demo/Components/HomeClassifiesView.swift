//
//  HomeClassifiesView.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/27.
//

import SwiftUI

struct HomeClassifiesView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("发现灵感")
                            .foregroundColor(hexColor(hex: 0xE3E3E6))
                            .font(.title3)
                        .fontWeight(.bold)
                    .padding(.top, 10)
                Spacer()
            }
            Text("123")
                .padding(.top, 15)
        }
    }
}

struct HomeClassifiesView_Previews: PreviewProvider {
    static var previews: some View {
        HomeClassifiesView()
    }
}
