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
            ZStack {
                RoundedRectangle(cornerRadius: 19)
                    .stroke(Color.black, lineWidth: 10)
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 2)
                    .foregroundColor(.black)
                Text("😻").font(.largeTitle)
                
            }
            ZStack {
                RoundedRectangle(cornerRadius: 19)
                    .stroke(Color.black, lineWidth: 10)
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 2)
                    .foregroundColor(.black)
                Text("😻").font(.largeTitle)
                
            }
            ZStack {
                RoundedRectangle(cornerRadius: 19)
                    .stroke(Color.black, lineWidth: 10)
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 2)
                    .foregroundColor(.black)
                Text("😻").font(.largeTitle)
                
            }
            ZStack {
                RoundedRectangle(cornerRadius: 19)
                    .stroke(Color.black, lineWidth: 10)
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 2)
                    .foregroundColor(.black)
                Text("😻").font(.largeTitle)
                
            }
        }
        
        .foregroundColor(.gray)
        .padding()
    }
    
}

#Preview {
    ContentView()
}

 
