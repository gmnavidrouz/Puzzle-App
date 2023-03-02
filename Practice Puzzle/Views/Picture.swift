//
//  Picture.swift
//  Practice Puzzle
//
//  Created by Navid Rouzroch on 2/28/23.
//

import SwiftUI

struct Picture: View {
    private let imageSize: CGFloat = 120
    @State private var offset = CGSize.zero
    var imageName: String
    var endLocation: CGPoint

    var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                
                var x = value.startLocation.x + value.translation.width - imageSize/2
                var y = value.startLocation.y + value.translation.height - imageSize/2
                
                if abs(x - endLocation.x) < 20 && abs(y - endLocation.y) < 20{
                    x = endLocation.x
                    y = endLocation.y
                }
                offset = CGSize(
                    width: x,
                    height: y)
            }
    }
    init(imageName : String, endLocation: CGPoint) {
        self.offset = CGSize(
            width: Int.random(in: -120...120),
            height: Int.random(in: -120...120)
            )
        self.imageName = imageName
        self.endLocation = endLocation
    }

    var body: some View {
        VStack{
            Spacer()
            Image(imageName)
                .resizable()
                .frame(width: imageSize, height: imageSize)
                .offset(offset)
                .gesture(dragGesture)
            Spacer()
        }
    }
}

struct Picture_Previews: PreviewProvider {
    static var previews: some View {
        Picture(imageName: "IMAGES", endLocation: CGPointMake(0, 0))
    }
}
