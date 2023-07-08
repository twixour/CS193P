//
//  ContentView.swift
//  CS193P
//
//  Created by Raushan Kashyap on 08/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
//            CardView(isFaceUp: true)
//            CardView(isFaceUp: false)
//            CardView(isFaceUp: true)
//            CardView(isFaceUp: false)
            CardView()
            CardView()
            CardView()
            CardView()
            
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}


struct CardView: View {
    
    var isFaceUp: Bool = true
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if isFaceUp {
                shape
                    .fill()
                    .foregroundColor(Color.white)
                shape
                    .stroke(lineWidth: 3)
                Text("✈️")
                    .font(.largeTitle)
            } else {
                shape.fill()
            }
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
