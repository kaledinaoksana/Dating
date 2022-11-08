//
//  DayItem.swift
//  Dating
//
//  Created by Oksana Kaledina on 29.09.2022.
//

import SwiftUI

struct DayItem: View {
    
    let day: Date
    let name: String
    
    var body: some View {
        
        ZStack{
            
            Color.appBack
                .ignoresSafeArea()
            
            ZStack{
                
                RectangleButton(
                    mainColor: .yellow,
                    secondColor: .appAсcent.opacity(0.0),
                    border: .black)
                    .frame(height: 75)
                
                
                VStack(spacing: 6){
                    HStack{
                        Text("\(day.getFormattedDate(format: "MMM d, yyyy"))")
                            .frame(width: 120, alignment: .leading)
                        Text(name)
                       Spacer()
                    }
                    HStack{
                        Text( (day < Date()) ? "\(day.yearsOld(date: day))" : "")
                            .frame(width: 120, alignment: .leading)
                        Text("\(day.dateTo(date: day))")
                        Spacer()
                    }
                    
                }
                .foregroundColor(.black)
                .padding()
                
            }
            .padding()
        }
    }
    
    
    
}

struct DayItem_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack{
            HStack{
                Spacer()
                ButtonFigureView(width: 44, color: Color.appMain, image: "cross.fill", boarder: .appAсcent)
            }
            DayItem(day:Calendar.current.date(from: DateComponents(year: 2017, month: 10, day: 9))!, name: "Happy Birthday Tim")
                .frame(height: 90)
            Spacer()
   
        }
        
    }
}


