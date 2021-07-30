//
//  PersonViewList.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/29.
//

import SwiftUI

struct PersonViewList: View {
    
    @Binding var titleName: String
    
    @Binding var labelValue: String
    
    var body: some View {
        HStack {
            Text(titleName)
                .font(.caption)
                .foregroundColor(hexColor(hex: 0xFFFFFF))
                .fontWeight(.bold)
            
            Spacer()
            
            Text(labelValue)
                .font(.caption)
                .foregroundColor(hexColor(hex: 0xFFFFFF))
                .fontWeight(.bold)
        }
        .padding(20)
        
    }
}

struct PersonViewList_Previews: PreviewProvider {
    static var previews: some View {
        PersonViewList(titleName: .constant("1234"), labelValue: .constant("1234"))
    }
}
