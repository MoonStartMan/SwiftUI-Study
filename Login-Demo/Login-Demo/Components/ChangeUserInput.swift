//
//  ChangeUserInput.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/30.
//

import SwiftUI

struct ChangeUserInput: View {
    
    var placeHolderText: String
    @Binding var Inputtext: String
    
    var body: some View {
        TextField(placeHolderText, text: $Inputtext)
            .padding(15)
            .background(hexColor(hex: 0xFFFFFF))
            .cornerRadius(10)
            .font(.caption)
    }
}

struct ChangeUserInput_Previews: PreviewProvider {
    static var previews: some View {
        ChangeUserInput(placeHolderText: "", Inputtext: .constant(""))
    }
}
