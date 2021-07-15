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
            
            //List,ForEach等要求被循环的每个元素都有一个唯一标识符(通称:索引)
            //这样数据变更时可以迅速定位并进行UI刷新,提高性能
            //两种方法:
            //1.ArrayData.identified(by: \.id) id需为每个元素的唯一标识符属性
            //2.数组中元素遵循Identifiable(需实现id属性)
            List(landmarks) { landmark in
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark)){
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
