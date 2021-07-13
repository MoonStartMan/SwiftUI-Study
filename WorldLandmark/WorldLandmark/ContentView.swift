//
//  ContentView.swift
//  WorldLandmark
//
//  Created by 王潇 on 2021/7/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "photo")
            VStack(alignment: .leading) {
                Text("长城")
                Text("北京")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
