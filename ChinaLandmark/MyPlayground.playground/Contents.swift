import UIKit
import SwiftUI

struct Landmark: Identifiable {
    var id: Int
    var category: String
    var name: String
}

let landmarks = [
    Landmark(id: 1, category: "古迹", name: "天安门"),
    Landmark(id: 2, category: "现代建筑", name: "东方明珠"),
    Landmark(id: 6, category: "自然景观", name: "九寨沟")
]

var categories: [String : [Landmark]] {
    Dictionary(
        grouping: landmarks,
        by: {$0.category}
    )
}
