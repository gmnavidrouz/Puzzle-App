//
//  ContentView.swift
//  Practice Puzzle
//
//  Created by Navid Rouzroch on 2/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Drag the Images to complete the puzzle")
            HStack {
                Picture(imageName: "1")
                    .position(x: CGFloat.random(in: 0...100), y: CGFloat.random(in: 0...400))
                    
                Picture(imageName: "2")
                    .position(x: CGFloat.random(in: 0...100), y: CGFloat.random(in: 0...400))
                    
                Picture(imageName: "3")
                    .position(x: CGFloat.random(in: 0...100), y: CGFloat.random(in: 0...400))
                    
            }
            HStack {
                Picture(imageName: "4")
                    .position(x: CGFloat.random(in: 0...100), y: CGFloat.random(in: 0...400))
                    
                Picture(imageName: "5")
                    .position(x: CGFloat.random(in: 0...100), y: CGFloat.random(in: 0...400))
                    
                Picture(imageName: "6")
                    .position(x: CGFloat.random(in: 0...100), y: CGFloat.random(in: 0...400))
                    

            }
            HStack {
                Picture(imageName: "7")
                    .position(x: CGFloat.random(in: 0...100), y: CGFloat.random(in: 0...400))
                    
                Picture(imageName: "8")
                    .position(x: CGFloat.random(in: 0...100), y: CGFloat.random(in: 0...400))
                    
                Picture(imageName: "9")
                    .position(x: CGFloat.random(in: 0...100), y: CGFloat.random(in: 0...400))
                    
            }
            .frame(width: 250, height: 500)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
