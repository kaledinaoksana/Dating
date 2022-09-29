//
//  ButtonFigureView.swift
//  Dating
//
//  Created by Oksana Kaledina on 13.09.2022.
//

import SwiftUI

struct ButtonFigureView: View {
    
    let width: Double
    let color: Color
    let image: String
    
    let radius = CGFloat(10)
    
    var imageWidth: Double{
        width*0.5
    }

    let boarder: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: radius)
                .foregroundColor(color)
                .frame(width: width, height: width)
                .overlay(
                    RoundedRectangle(cornerRadius: radius)
                        .stroke(boarder, lineWidth: 4)
                )
            
            Image(systemName: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: imageWidth)
                .foregroundColor(.appBack)
        
        }
    }
}

struct ButtonFigureView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonFigureView(width: 44, color: Color.appMain, image: "cross.fill", boarder: .appAсcent)
    }
}
