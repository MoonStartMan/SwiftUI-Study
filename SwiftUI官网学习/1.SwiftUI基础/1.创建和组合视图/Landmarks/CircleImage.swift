//
//  CircleImage.swift
//  Landmarks
//
//  Created by 王潇 on 2021/7/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("1")
            .resizable()
            .frame(width: 200, height: 200, alignment: .center)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4)
            )
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
