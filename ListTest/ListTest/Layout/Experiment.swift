//
//  Experiment.swift
//  ListTest
//
//  Created by klioop on 2021/04/18.
//

import SwiftUI

struct Experiment: View {
    var body: some View {
        
        VStack() {
            EventHeader()
            Spacer()
        }.padding()
    }
}

struct Experiment_Previews: PreviewProvider {
    static var previews: some View {
        Experiment()
    }
}

struct CalendarView: View {
    var isVerified: Bool = true
    
    var body: some View {
        Image(systemName: "calendar")
            .resizable()
            .frame(width:50, height: 50)
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
            .addVerifiedBadge(isVerified)
    }
}

struct EventHeader: View {
    var body: some View {
        HStack(spacing: 15){
            CalendarView()
            VStack(alignment: .leading){
                Text("Event Title").font(.title)
                Text("Event")
            } // VStack
            Spacer() // Spacer only affects stakcs
        }
    }
}

extension View {
    func addVerifiedBadge(_ isVerifed: Bool) -> some View {
        ZStack(alignment: .topTrailing) {
            
            self
            
            if isVerifed {
                Image(systemName: "checkmark.circle.fill")
                    .offset(x: 3, y: -3)
            }
        }
    }
}
