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
       return HStack{
            ForEach(0..<cardCount, id: \.self){ index in
                CardView(content: emojis[index])
            }
        }  
    }
    
    var cardRemover: some View{
        Button(action: {
            if cardCount < emojis.count{
                cardCount+=1
            }
        }, label: {
            Image(systemName: "rectangle.stack.badge.plus.fill")
        }) 
    }
    var cardAdder: some View{
        Button(action: {
            if cardCount > 1 {
                cardCount-=1
            }
        }, label: {
            Image(systemName: "rectangle.stack.badge.minus.fill")
        })   
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

 
