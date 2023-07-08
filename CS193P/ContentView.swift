//
//  ContentView.swift
//  CS193P
//
//  Created by Raushan Kashyap on 08/07/23.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["✈️", "🚗","🚜","🚁"]
    @State var emojiCount: Int = 4
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0 ..< emojiCount], id:\.self) { emoji in
                    CardView(content: emoji)
                }
                
            }
            .padding(.horizontal)
            .foregroundColor(.red)
            HStack {
                Button(action:{
                    emojiCount += 1
                }) {
                    VStack {
                        Text("Add")
                        Text("Card")
                    }
                }
                Spacer()
                Button(action:{
                    emojiCount -= 1
                }) {
                    VStack {
                        Text("Remove")
                        Text("Card")
                    }
                }
            }
            .padding(.horizontal)
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
                    .stroke(lineWidth: 3)
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
