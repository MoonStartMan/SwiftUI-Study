//
//  Home.swift
//  ChinaLandmark
//
//  Created by 王潇 on 2021/7/17.
//

import SwiftUI

struct Home: View {
    
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
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
