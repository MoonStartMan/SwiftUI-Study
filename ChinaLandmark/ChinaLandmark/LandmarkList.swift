//
//  LandmarkList.swift
//  ChinaLandmark
//
//  Created by 王潇 on 2021/7/17.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoritesOnly = false
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("只展示收藏")
                }
                
                ForEach(userData.userLandmarks){ landmark in
                    
//                    if self.showFavoritesOnly{
//                        if landmark.isFavorite{
//                            //NavigationLink...
//                        }
//                    }else{
//                        //NavigationLink...
//                    }
                    
                    
                    if !self.showFavoritesOnly || landmark.isFavorite{
                        NavigationLink(
                            destination: LandmarkDetail(landmark: landmark).environmentObject(self.userData)
                        ){
                            LandmarkCell(landmark: landmark)
                        }
                    }
                    
                    
                }
            }
            .navigationBarTitle(Text("中国地标"))
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
//        Group {
//            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
//                .previewDisplayName("iPhone 8")
//            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: "iPhone XS"))
//                .previewDisplayName("iPhone XS")
//        }
        
        ForEach(["iPhone XS", "iPhone 8"], id: \.self){ deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        .environmentObject(UserData())
    }
}
#endif

