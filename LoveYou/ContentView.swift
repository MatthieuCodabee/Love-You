//
//  ContentView.swift
//  LoveYou
//
//  Created by matthieu passerel on 10/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var scaleEffect: Double = 1
    
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .font(.system(size: 200))
                .foregroundColor(.red)
                .scaleEffect(scaleEffect)
                .animation(.easeInOut(duration: 0.5), value: scaleEffect)
            Text("Tu fais battre mon Coeur")
                .font(.title)
                .italic()
                .foregroundColor(.red)
        }
        .onAppear() {
            Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { _ in
                scaleEffect = (scaleEffect == 1) ? 0.5 : 1
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
