//
//  ContentView.swift
//  MemorizeGame
//
//  Created by user249445 on 4/3/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["✌","😂","😝","😁","😱","👉","🙌","🍻","🔥","🤪"]
    
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack{
            ScrollView{
            cards
            }
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
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]){
            ForEach(0..<cardCount, id: \.self){ index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3,contentMode: .fit)
            }
        }
        .foregroundColor(.blue)
    }
    
    func cardCountAdjuster(by offset: Int, symbol: String) -> some View {
        Button(action: {
            cardCount += offset
            },label:{
            Image(systemName: symbol)
        })
        .disabled(cardCount + offset  < 1 || cardCount + offset > emojis.count)
    }
    
    var cardAdder: some View{
        cardCountAdjuster(by: +1, symbol: "rectangle.stack.badge.plus.fill")
    }
    var cardRemover: some View{
        cardCountAdjuster(by: -1, symbol: "rectangle.stack.badge.minus.fill")
        
    }
    
    
    
}

struct CardView: View {
    let content: String
    @State var isFaceup: Bool = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            Group{
                    
                base.fill(.white)
                base.strokeBorder(lineWidth: 2.5)
                    Text(content).font(.largeTitle)
            }
            .opacity(isFaceup ? 1:0)
            base.fill().opacity(isFaceup ? 0:1)
            
        }
        .onTapGesture {
        isFaceup.toggle()
            
        }
    }
}

#Preview {
    ContentView()
}
