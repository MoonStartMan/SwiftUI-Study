
import SwiftUI
import CoreLocation

struct Landmark: Identifiable {
    var id: Int
    var category: String
    var name: String
    var city: String
    var province: String
    
    var latitude: Double
    var longitude: Double
    var locationCoordinate: CLLocationCoordinate2D { CLLocationCoordinate2D(latitude: latitude, longitude: longitude) }
    
    var imageName: String
    
    var isFavorite: Bool
    var isFeatured: Bool
}

let landmarks = [
    Landmark(id: 1, category: "古迹", name: "天安门", city: "北京", province: "北京市", latitude: 39.9087243, longitude: 116.3952859, imageName: "tiananmen", isFavorite: true, isFeatured: true),
    Landmark(id: 2, category: "现代建筑", name: "东方明珠", city: "上海", province: "上海市", latitude: 31.2396935, longitude: 121.4975613, imageName: "dongfangmingzhu", isFavorite: false, isFeatured: true),
    Landmark(id: 3, category: "现代建筑", name: "广州塔", city: "广州", province: "广东省", latitude: 23.1057327, longitude: 113.3212248, imageName: "xiaomanyao", isFavorite: true, isFeatured: false),
    Landmark(id: 4, category: "现代建筑", name: "金融中心", city: "深圳", province: "广东省", latitude: 22.5252475, longitude: 114.0496064, imageName: "jinrongzhongxin", isFavorite: false, isFeatured: false),
    Landmark(id: 5, category: "现代建筑", name: "天际线", city: "香港", province: "香港特别行政区", latitude: 22.3002824, longitude: 114.1552779, imageName: "skyline", isFavorite: true, isFeatured: false),
    Landmark(id: 6, category: "自然景观", name: "九寨沟", city: "九寨沟县", province: "四川省", latitude: 33.0662381, longitude: 103.6868964, imageName: "jiuzhaigou", isFavorite: true, isFeatured: true),
    Landmark(id: 7, category: "自然景观", name: "日月潭", city: "南投县", province: "台湾", latitude: 23.8563226, longitude: 120.9145103, imageName: "riyuetan", isFavorite: false, isFeatured: true),
    Landmark(id: 8, category: "自然景观", name: "西湖", city: "杭州", province: "浙江省", latitude: 30.2430439, longitude: 120.1258988, imageName: "xihu", isFavorite: false, isFeatured: false),
    Landmark(id: 9, category: "古迹", name: "布达拉宫", city: "拉萨", province: "西藏自治区", latitude: 29.6554988, longitude: 91.1163852, imageName: "budalagong", isFavorite: false, isFeatured: false),
    Landmark(id: 10, category: "古迹", name: "中山陵", city: "南京", province: "江苏省", latitude: 32.0605805, longitude: 118.8480227, imageName: "zhongshanling", isFavorite: false, isFeatured: false),
]


let featuredLandmarks = landmarks.filter{ $0.isFeatured }
//底层原理
//var featuredLandmarks: [Landmark] = []
//for landmark in landmarks{
//    if landmark.isFeatured{
//        featuredLandmarks.append(landmark)
//    }
//}
