//
//  LandmarkDetail.swift
//  WorldLandmark
//
//  Created by 王潇 on 2021/7/15.
//

import SwiftUI

struct LandmarkDetail : View {
    
    let landmark: Landmark
    
    //双向绑定（常见于各种现代前端和客户端语言）
    //@xx类型-构成了SwiftUI数据流（data flow）的最基本单元
    @State private var zoomed = false
    
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            Image(landmark.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .navigationBarTitle(Text(landmark.name), displayMode: .inline)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 1)){
                        self.zoomed.toggle()
                    }
                }
            
            //Stackview中目前只支持if else。其余比如let就不支持
            if !zoomed{
                Text(landmark.location)
                    .font(.largeTitle)
                    .foregroundColor(.secondary)
                    .padding()
                    .transition(.move(edge: .trailing))
            }
        }
    }
}

#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView{
                LandmarkDetail(landmark: landmarks[6])
            }
            NavigationView{
                LandmarkDetail(landmark: landmarks[8])
            }
        }
    }
}
#endif
