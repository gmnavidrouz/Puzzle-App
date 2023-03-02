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
            ZStack {
                Picture(imageName: "1",
                        endLocation: CGPointMake(-120, -120))
                Picture(imageName: "2",
                        endLocation: CGPointMake(0, -120))
                Picture(imageName: "3",
                        endLocation: CGPointMake(120, -120))
                Picture(imageName: "4",
                        endLocation: CGPointMake(-120, 0))
                Picture(imageName: "5",
                        endLocation: CGPointMake(0, 0))
                Picture(imageName: "6",
                        endLocation: CGPointMake(120, 0))
                Picture(imageName: "7",
                        endLocation: CGPointMake(-120, 120))
                Picture(imageName: "8",
                        endLocation: CGPointMake(0, 120))
                Picture(imageName: "9",
                        endLocation: CGPointMake(120, 120))
            }
                
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
