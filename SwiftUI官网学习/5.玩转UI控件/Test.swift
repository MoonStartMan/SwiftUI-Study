//
//  Test.swift
//  Landmarks
//
//  Created by 王潇 on 2021/7/24.
//

import SwiftUI

struct Test: View {
    
    @State var name: String = "zhangzhi"
    
    var body: some View {
        Text(name)
        son.init(xxx: $name)
        
    }
}

struct son: View {
    
    @Binding var xxx: String
    
    var body: some View {
        Button("click") {
            self.xxx = "ss"
        }
    
    }
}
