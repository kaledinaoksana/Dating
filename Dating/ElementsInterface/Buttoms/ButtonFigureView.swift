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
    let lineWidth = CGFloat(4)
    
    let radius = CGFloat(10)
    
    var imageWidth: Double{
        width*0.5
    }

    let boarder: Color
    
    var body: some View {
        ZStack{
            ZStack{
                RoundedRectangle(cornerRadius: radius)
                    .foregroundColor(color)
                    .frame(width: width, height: width)
                    .overlay(
                        RoundedRectangle(cornerRadius: radius)
                            .stroke(boarder, lineWidth: lineWidth)
                    )
                
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: imageWidth)
                    .foregroundColor(.appBack)
            
            }
        }
        .frame(width: width+lineWidth*2)
        
    }
}

struct ButtonFigureView_Previews: PreviewProvider {
    static var previews: some View {
       
            ZStack{
                Color.yellow
                    .ignoresSafeArea()
                VStack{
                ButtonFigureView(width: 44, color: Color.appMain, image: "cross.fill", boarder: .appAсcent)
                Text("fdjskhgk")
                Spacer()
            }
            
        }
        
        
       
    }
}
