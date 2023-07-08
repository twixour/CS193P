//
//  ContentView.swift
//  CS193P
//
//  Created by Raushan Kashyap on 08/07/23.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["✈️", "🚗","🚜","🚁", "🛴", "🚲", "🚀", "🚘", "🛺", "🏍️", "🚄","🚖","🚔","🚍","🛩️"]
    @State var emojiCount: Int = 4
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0 ..< emojiCount], id:\.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit) // this modifier lets the CardView be 2 wide and 3 high
                    }
                    
                }
            }
            
            .foregroundColor(.red)
            Spacer()  // This spacer consumes the entire space if you remove this spacer here then all the cards will come to the center
            HStack {
                remove
                Spacer()
                add
                
            }
            .padding(.horizontal)
            .font(.largeTitle)
        }
        .padding(.horizontal)
    }
    var remove: some View {
        Button(action:{
            if emojiCount > 1 {
                emojiCount -= 1
            }
        }) {
            Image(systemName: "minus.circle")
        }
    }
    var add: some View {
        Button(action:{
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        }) {
            Image(systemName: "plus.circle")
        }
    }
}


struct CardView: View {
    var content: String
    @State private var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if isFaceUp {
                shape
                    .fill()
                    .foregroundColor(Color.white)
                shape
                    .strokeBorder(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}
