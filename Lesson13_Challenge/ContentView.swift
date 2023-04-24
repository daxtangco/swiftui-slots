//
//  ContentView.swift
//  Lesson13_Challenge
//
//  Created by Dax Tangco on 3/18/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var credits = 1000
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1

    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("SwiftUI Slots!")
                .font(.title)
            Spacer()
            Text("Credits: \(credits)")
            Spacer()
            HStack {
                Spacer()
                Image("fruit\(slot1)").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fit)
                Image("fruit\(slot2)").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fit)
                Image("fruit\(slot3)").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fit)
            }
            Spacer()
            
            Button("Spin") {
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                
                if slot1 == slot2 && slot2 == slot3 {
                    credits += 15
                } else {
                    credits -= 5
                }
                
            }
            .padding()
            .padding([.leading, .trailing], 40)
            .foregroundColor(.white)
            .background(Color(.systemPink))
            .cornerRadius(25)
            .font(.system(size: 18, weight: .bold, design: .default))
            Spacer()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
