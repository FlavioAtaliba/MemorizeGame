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
            cards
            Spacer()
            cardCountAdjusters
        }
        .padding()
        .imageScale(.large)
        .font(.largeTitle)
    }
    
    
    
    var cardCountAdjusters: some View{
        HStack {
            cardAdder
            Spacer()
            cardRemover
        }    }
    
    var cards: some View{
        LazyVGrid(columns: [GridItem(),GridItem(),GridItem()]){
            ForEach(0..<cardCount, id: \.self){ index in
                CardView(content: emojis[index])
            }
        }
    }
    
    func cardCountAdjuster(by offset: Int, symbol: String) -> some View {
        Button(action: {
            cardCount += offset
            },label:{
            Image(systemName: symbol)
        })
        .disabled(cardCount + offset  < 1 || cardCount + offset > emojis.count)
    }
    
    var cardRemover: some View{
        cardCountAdjuster(by: -1, symbol: "rectangle.stack.badge.minus.fill")
        
    }
    var cardAdder: some View{
        cardCountAdjuster(by: +1, symbol: "rectangle.stack.badge.plus.fill")
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
        isFaceup.toggle()
            
        }
    }
}

#Preview {
    ContentView()
}
