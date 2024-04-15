//
//  ContentView.swift
//  MemorizeGame
//
//  Created by user249445 on 4/3/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["😊", "🌟", "🎉", "🌈", "🍀", "🌺", "🎈", "🎶", "🎁", "🌼", "🌞", "🌍", "🎨", "📚", "💡", "🍔", "🚀", "🎲", "🎸", "🎭"]
    
    @State var emojiCount = 20
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(emojis[0..<emojiCount], id: \.self){ emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.blue)
        }
        .padding(.horizontal)
    }
}
                    
      
                    

struct CardView: View {
    var content: String
    @State var isFaceup: Bool = false
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceup{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else{
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceup = !isFaceup
        }
    }
}
                

#Preview {
    ContentView()
}
