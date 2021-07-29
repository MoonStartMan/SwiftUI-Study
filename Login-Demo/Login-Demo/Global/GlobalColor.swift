//
//  Color.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/26.
//

import Foundation
import SwiftUI
    
func hexColor(hex: Int) -> Color {
    let components = (
        R: Double((hex >> 16) & 0xff) / 255,
        G: Double((hex >> 08) & 0xff) / 255,
        B: Double((hex >> 00) & 0xff) / 255
    )
    return Color(red: components.R, green: components.G, blue: components.B)
}

func hexColor(hex: Int, alpha: Double) -> Color {
    let components = (
        R: Double((hex >> 16) & 0xff) / 255,
        G: Double((hex >> 08) & 0xff) / 255,
        B: Double((hex >> 00) & 0xff) / 255
    )
    return Color(red: components.R, green: components.G, blue: components.B, opacity: alpha)
}
