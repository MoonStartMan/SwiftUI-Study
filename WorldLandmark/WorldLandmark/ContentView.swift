//
//  ContentView.swift
//  WorldLandmark
//
//  Created by 王潇 on 2021/7/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(
                    destination: Text(landmark.name)){
                    Image(landmark.thumbnailName).cornerRadius(8.0)
                    VStack(alignment: .leading) {
                        Text(landmark.name)
                        Text(landmark.location)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationBarTitle(Text("世界地标"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
