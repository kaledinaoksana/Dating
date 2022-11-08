//
//  ListView.swift
//  Dating
//
//  Created by Oksana Kaledina on 13.09.2022.
//

import SwiftUI
import CoreData

struct ListView: View {

    
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack{
            
            
            Color.appBack
                .ignoresSafeArea()
            
            VStack{
                
                HStack{
                    Spacer()
                    Button(action: {}) {
                        ButtonFigureView(width: 40, color: .appMain, image: "cross.fill", boarder: .appAсcent)
                    }
                }
                .frame(height: 50)
               
              
               
                DayItem(
                    day: Calendar.current.date(from: DateComponents(year: 1968, month: 10, day: 9))!,
                    name: "Happy Birthday Dad"
                )
                .frame(height: 90)
                
                DayItem(
                    day: Calendar.current.date(from: DateComponents(year: 1969, month: 12, day: 4))!,
                    name: "Happy Birthday Mom"
                )
                .frame(height: 90)
                
                DayItem(
                    day: Calendar.current.date(from: DateComponents(year: 2022, month: 10, day: 2))!,
                    name: "Crisis 2 oct"
                )
                .frame(height: 90)
                
                DayItem(
                    day: Calendar.current.date(from: DateComponents(year: 2023, month: 2, day: 5))!,
                    name: "new life"
                )
                .frame(height: 90)
                
                DayItem(
                    day: Calendar.current.date(from: DateComponents(year: 2022, month: 10, day: 28))!,
                    name: "Today"
                )
                .frame(height: 90)
                
                Spacer()
                
            }
            .padding()
        }
    }

}



struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(isPresented: .constant(true))
    }
}

