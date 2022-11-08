//
//  ColorExtension.swift
//  Dating
//
//  Created by Oksana Kaledina on 13.09.2022.
//

import SwiftUI

extension Color {
    
//    static let appMain = Color(red: 255 / 255, green: 200 / 255, blue: 87 / 255)
//    static let appBack = Color(red: 248 / 255, green: 244 / 255, blue: 227 / 255)
//    static let appAсcent = Color(red: 233 / 255, green: 114 / 255, blue: 76 / 255)
//    static let appUnique = Color(red: 229 / 255, green: 68 / 255, blue: 109 / 255)

   // static let appBoarder = Color(red: 229 / 255, green: 68 / 255, blue: 109 / 255)
//    //static let appBoarder = Color.black
//    static let appBoarder = Color(red: 98 / 255, green: 148 / 255, blue: 96 / 255)
//    static let appMain = Color(red: 43 / 255, green: 65 / 255, blue: 98 / 255)
//    static let appBack = Color(red: 245 / 255, green: 240 / 255, blue: 246 / 255)
//    static let appAсcent = Color(red: 56 / 255, green: 95 / 255, blue: 113 / 255)
//    static let appUnique = Color(red: 98 / 255, green: 148 / 255, blue: 96 / 255)
    
    static let appMain = rgba(236,105,63,1)
    static let appBack = rgba(250,251,253,1)
    static let appAсcent = rgba(244,148,82,1)
    static let appUnique = rgba(115,158,59,1)
}

extension Text {
    static let font1 = "ChalkboardSE-Regular"//"AmericanTypewriter"
    static let font2 = "OpenSans-Bold"
    static let font = "KohinoorBangla-Semibold"
    static let font3 = "OpenSans-Bold"
}


func rgba(_ r: Double, _ g: Double, _ b: Double, _ op: Double) -> Color {
    return Color(red: r / 255, green: g / 255, blue: b / 255).opacity(op)
}

//extension Color {
//    func colorRGB(_ red: Double, _ green: Double, _ blue: Double) -> Color{
//        return Color(red: red / 255, green: green / 255, blue: blue / 255)
//    }
//}
