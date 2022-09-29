//
//  RectangleButton.swift
//  Dating
//
//  Created by Oksana Kaledina on 13.09.2022.
//

import SwiftUI

struct RectangleButton: View {
    
    let mainColor: Color
    let secondColor: Color
    let radius = CGFloat(10)
    let offset = CGFloat(3)
    
    let border: Color
    
    
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: radius)
                .foregroundColor(secondColor)
                .overlay(
                    RoundedRectangle(cornerRadius: radius)
                        .stroke(border, lineWidth: 1)
                )
                .offset(x: offset, y: offset)
            
            RoundedRectangle(cornerRadius: radius)
                .foregroundColor(mainColor)
                .overlay(
                    RoundedRectangle(cornerRadius: radius)
                        .stroke(border, lineWidth: 1)
                )
        }
    }
}

struct RectangleButton_Previews: PreviewProvider {
    static var previews: some View {
        RectangleButton(mainColor: .appMain, secondColor: .appAсcent, border: .appUnique)
            .frame(width: 200, height: 40)
    }
}
