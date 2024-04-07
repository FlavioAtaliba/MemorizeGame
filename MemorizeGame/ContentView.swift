//
//  ContentView.swift
//  MemorizeGame
//
//  Created by user249445 on 4/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceup: true)
            CardView(isFaceup: false)
            CardView(isFaceup: true)
            CardView(isFaceup: false)
        }
        
        .foregroundColor(.gray)
        .padding()
    }
    
}

struct CardView: View {
    var isFaceup: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceup{
                RoundedRectangle(cornerRadius: 19)
                    .stroke(Color.black, lineWidth: 10)
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 2)
                    .foregroundColor(.black)
                Text("😻").font(.largeTitle)
            }else{
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.blue, lineWidth: 8)
                    .foregroundColor(.cyan)
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 2)
                    .foregroundColor(.black)
            }
        }
    }
}

#Preview {
    ContentView()
}

 
