//
//  WelcomeView.swift
//  Dating
//
//  Created by Oksana Kaledina on 14.09.2022.
//

import SwiftUI

struct WelcomeView: View {
    
    let name = "my friend"
    @State var isPresented: Bool = false
    
    var body: some View {
        ZStack{
            
            Color.appBack
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Text("Hi, \(name)!")
                    .font(.custom(Text.font, size: 30))
                    .foregroundColor(.appAсcent)
                    .bold()
                    .multilineTextAlignment(.center)
                    
                Spacer()
                Button (action: {isPresented.toggle()}) {
                    ZStack{
                        RectangleButton(
                            mainColor: .appMain,
                            secondColor: .appUnique.opacity(0.0),
                            border: .appAсcent
                        )
                        Text("Hold me!")
                            .font(.custom(
                                Text.font,
                                fixedSize: 15))
                            .foregroundColor(.appBack)
                    }
                    .frame(width: 120, height: 40)
                    .sheet(isPresented: $isPresented){
                        ListView(isPresented: $isPresented)
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
    
    
  
    
    
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
