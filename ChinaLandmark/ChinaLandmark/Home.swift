//
//  Home.swift
//  ChinaLandmark
//
//  Created by 王潇 on 2021/7/17.
//

import SwiftUI

struct Home: View {
    
    @State var showingProfile = false
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: {$0.category}
        )
    }
    
    var body: some View {
        NavigationView {
            List{
                Image(landmarks[0].imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(categories.keys.sorted(), id: \.self){
                    categoryName in
                    
                    CategoryCell(categoryName: categoryName, landmarks: self.categories[categoryName]!)
                    
                }
                .listRowInsets(EdgeInsets())
                
//                NavigationLink(
//                    destination: LandmarkList()){
//                        Text("查看所有地标")
//                    }
            }
            .navigationBarTitle(Text("精选"))
            .navigationBarItems(trailing:
                Button(action: {self.showingProfile.toggle()}) {
                    Image(systemName: "person.crop.circle")
                        .imageScale(.large)
                        .padding()
                }
    )
            .sheet(isPresented: $showingProfile, content: {
                Profile()
            })
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
