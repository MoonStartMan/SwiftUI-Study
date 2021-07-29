/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A model object that stores app data.
*/

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
    
    @Published var obj: SubObj = SubObj()
}

class SubObj: ObservableObject {
    @Published var a: Bool = false
}
