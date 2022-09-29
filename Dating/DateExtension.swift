//
//  DateExtension.swift
//  Dating
//
//  Created by Oksana Kaledina on 29.09.2022.
//

import Foundation

extension Date {
   func getFormattedDate(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
    
    func days(calendar: Calendar = Calendar.current) -> Int {
        return calendar.dateComponents([.day], from: self, to: Date()).day!
    }
    
    func years(calendar: Calendar = Calendar.current) -> Int {
        return calendar.dateComponents([.year], from: self, to: Date()).year!
    }
    
    func months(calendar: Calendar = Calendar.current) -> Int {
        return calendar.dateComponents([.month], from: self, to: Date()).month!
    }
    
    func dateTo(date: Date) -> String {
        var string = "nil"
        
        var yearsTo = date.years()
        var monthsTo = date.months()
        var daysTo = date.days()
        
       
        if date > Date() {
            print("date > DATE")
            string = enb(year: -yearsTo, month: -monthsTo, day: -daysTo+1)
        } else {
            if let dateWithoutYears = Calendar.current.date(byAdding: .year, value: yearsTo+1, to: date) {
                if let dateNew = Calendar.current.date(byAdding: .day, value: 1, to: dateWithoutYears) {
                    monthsTo = dateNew.months()
                    yearsTo = dateNew.months()
                    daysTo = dateNew.days()
                    
                    string = enb(year: -yearsTo, month: -monthsTo, day: -daysTo)
                }
            }
        }
 
        return string
    }
    
    
    private func enb(year yearsTo: Int, month monthsTo: Int, day daysTo: Int) -> String {
        
        if yearsTo > 0 {
            if yearsTo == 1{
                return "\(yearsTo) year left"
            } else {
                return "\(yearsTo) years left"
            }
        } else if monthsTo > 0 {
            if monthsTo == 1{
                return "\(monthsTo) month left"
            } else {
                return "\(monthsTo) months left"
            }
        } else if daysTo > 0 {
            if daysTo == 1{ return "\(daysTo) day left"}
            if daysTo == 0{
                return "It is today!"
            } else {
                return "\(daysTo) days left"
            }
        
        }
        
        return "nil"
    }
    
    
    func yearsOld(date: Date) -> String {
        let yearsTo = date.years()
        
        if date < Date() {
            if yearsTo > 1 {
                return "\(yearsTo) years"
            }
            if yearsTo == 1 {
                return "\(yearsTo) year"
            }
        }
        return "less 1 year"
    }
 
}
    


