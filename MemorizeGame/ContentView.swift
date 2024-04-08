//
//  ContentView.swift
//  MemorizeGame
//
//  Created by user249445 on 4/3/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["✌","😂","😝","😁","😱","👉","🙌","🍻","🔥"]
    
    @State var cardCount: Int = 4
                  
    var body: some View {
        VStack{
            HStack {
                ForEach(0..<cardCount, id: \.self){ index in
                    CardView(content: emojis[index])
                }
            }
            .foregroundColor(.black)
            HStack {
            Button("Add Card"){
                cardCount += 1
            }
            Spacer()
            Button("Remove Card"){
                cardCount -= 1
            }
         }
      }
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

 
