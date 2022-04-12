//
//  ContentView.swift
//  Picker with hours and minutes
//
//  Created by Ozgu Ozden on 2022/04/12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var hours = 0
    @State private var minutes = 0
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                HStack(spacing: 0) {
                    Picker("", selection: $hours){
                        ForEach(0..<25, id: \.self) { i in
                            Text("\(i) hours").tag(i)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                    .frame(width: geometry.size.width/2)
                    .compositingGroup()
                    .clipped()
                    
                    
                    Picker("", selection: $minutes){
                        ForEach(0..<60, id: \.self) { i in
                            Text("\(i) min").tag(i)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                    .frame(width: geometry.size.width/2)
                    .compositingGroup()
                    .clipped()
                    
                }
            }
            .navigationTitle("\(hours) hours \(minutes) minutes")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
