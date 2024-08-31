//
//  DatePickers.swift
//  SwiftUILearning
//
//  Created by Eryus Tech on 31/08/24.
//

import SwiftUI

struct DatePickers: View {
    
    @State var sdate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    var dFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("SELECT DATE IS:")
            Text(dFormatter.string(from: sdate))
            DatePicker("Select a date", selection: $sdate, in: startingDate...endingDate, displayedComponents: [.date])
        }
        //DatePicker("Select a Date", selection: $sdate, displayedComponents: [.hourAndMinute, .date])
        /*
        DatePicker("Select a date", selection: $sdate)
            .accentColor(.red)
            .datePickerStyle(
                //CompactDatePickerStyle()
                //GraphicalDatePickerStyle()
                //WheelDatePickerStyle()
            )
*/
    }
}

#Preview {
    DatePickers()
}
