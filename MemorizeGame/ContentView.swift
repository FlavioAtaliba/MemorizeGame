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
            let emojis: Array<String> = ["😺","😅","🥳","😅"]
            CardView(content: emojis[0], isFaceup: true)
            CardView(content: emojis[1], isFaceup: true)
            CardView(content: emojis[2], isFaceup: true)
            CardView(content: emojis[3], isFaceup: true)       
               }
        .foregroundColor(.black)
        .padding()
    }
    
}

struct CardView: View {
    let content: String
    @State var isFaceup: Bool = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 19)
            if isFaceup{
                    base.stroke(Color.blue, lineWidth: 10)
                    base.stroke(Color.white, lineWidth: 2)
                    base.fill(.white)
                Text(content).font(.largeTitle)
            }else{
                    base.stroke(Color.blue, lineWidth: 10)
                    base.fill(.orange)
                    base.stroke(Color.black, lineWidth: 2)
                    base.fill(.black)
            }
        }.onTapGesture {
//            isFaceup = !isFaceup or by another way below
            isFaceup.toggle()
            
        }
    }
}

#Preview {
    ContentView()
}

 
