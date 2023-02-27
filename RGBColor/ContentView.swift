//
//  ContentView.swift
//  RGBColor
//
//  Created by 라완 💕 on 26/05/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    @State var RedValue: Double = 0.0
    @State var GreenValue: Double = 0.0
    @State var BlueValue: Double = 0.0
    
    var body: some View {
        VStack {
            RGBcolor(RedValue: $RedValue, GreenValue: $GreenValue, BlueValue: $BlueValue)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RGBcolor: View {
    
    @Binding var RedValue: Double
    @Binding var GreenValue: Double
    @Binding var BlueValue: Double
    
    var body: some View {
        VStack {
            Text("Red:")
            Slider(value: $RedValue, in: 0...1)
                .accentColor(Color.red)
            Text("Green:")
            Slider(value: $GreenValue, in: 0...1)
                .accentColor(Color.green)
            Text("Blue:")
            Slider(value: $BlueValue, in: 0...1)
                .accentColor(Color.blue)
            Text("Result:")
            Rectangle()
            .fill(Color(red: RedValue, green: GreenValue, blue: BlueValue))
            .frame(width: 100, height: 100)
        }
        .padding(.horizontal)
    }
}
