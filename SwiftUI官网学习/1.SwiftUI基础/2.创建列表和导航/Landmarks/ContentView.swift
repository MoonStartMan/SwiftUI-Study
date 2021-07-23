//
//  ContentView.swift
//  Landmarks
//
//  Created by 王潇 on 2021/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView(coordinate: landmarkData[0].locationCoordinate)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircleImage(image: landmarkData[0].image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Trutle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree Nation Park").font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
