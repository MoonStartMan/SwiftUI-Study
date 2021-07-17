//
//  LandmarkList.swift
//  ChinaLandmark
//
//  Created by 王潇 on 2021/7/17.
//

import SwiftUI

struct LandmarkCell : View {
    
    let landmark: Landmark
    
    var body: some View {
        HStack{
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(8)
            
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
//                    .imageScale(.large)
            }
        }
    }
}

#if DEBUG
struct LandmarkCell_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkCell(landmark: landmarks[0])
            LandmarkCell(landmark: landmarks[8])
            LandmarkCell(landmark: landmarks[9])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
