//
//  HikeBadge.swift
//  Landmarks
//
//  Created by 王潇 on 2021/7/23.
//

import SwiftUI

struct HikeBadge: View {
    
    var name: String
    
    var body: some View {
        VStack(alignment: .center) {
            Badge().aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
            
                .frame(width: 100, height: 100)
            
            Text(name)
                .font(.caption)
                .accessibility(label: Text("Badge for \(name)."))
        }
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Preview Testing")
    }
}
