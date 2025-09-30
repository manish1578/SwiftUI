//
//  ContentView.swift
//  ColorMixerSUI
//
//  Created by Manish Sharma on 30/09/25.
//

import SwiftUI

struct ContentView: View {
    @State  var sliderValueRed: Double = 0.5
    @State  var sliderValueGreen: Double = 0.5
    @State  var sliderValueBlue: Double = 0.5
    @State  var isOnRed: Bool = true
    @State  var isOnGreen: Bool = true
    @State  var isOnBlue: Bool = true
    
    var body: some View {
        ZStack {
            Color(red: sliderValueRed , green: sliderValueGreen, blue: sliderValueBlue)
                .ignoresSafeArea(edges: .all)
            VStack {
                Slider(value: $sliderValueRed, in: 0.0...1.0)
                    .disabled(!isOnRed)
                    .tint(.red)
                Toggle("", isOn: $isOnRed)
                Slider(value: $sliderValueGreen, in: 0.0...1.0)
                    .disabled(!isOnGreen)
                    .tint(.green)
                Toggle("", isOn: $isOnGreen)
                Slider(value: $sliderValueBlue, in: 0.0...1.0)
                    .disabled(!isOnBlue)
                    .tint(.blue)
                Toggle("", isOn: $isOnBlue)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
