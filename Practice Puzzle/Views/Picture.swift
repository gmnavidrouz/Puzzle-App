//
//  Picture.swift
//  Practice Puzzle
//
//  Created by Navid Rouzroch on 2/28/23.
//

import SwiftUI

struct Picture: View {
    private let imageSize: CGFloat = 100
    @State private var offset = CGSize.zero
    var imageName: String

    var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                offset = CGSize(width: value.startLocation.x + value.translation.width - imageSize/2, height: value.startLocation.y + value.translation.height - imageSize/2)
            }
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
        Picture(imageName: "IMAGES")
    }
}
