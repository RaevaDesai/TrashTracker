//
//  ResultView.swift
//  TrashTracker
//
//  Created by Raeva Desai on 7/28/24.
//

import SwiftUI

struct ResultView: View {
    var resultText: String
    var capturedImage: UIImage

    var body: some View {
        VStack {
            Spacer()
            
            Image(uiImage: capturedImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            
            Text(resultText)
                .font(.custom("Copperplate", size: 24)) // Adjust size as needed
                .foregroundColor(.white)
                .padding()
                .multilineTextAlignment(.center)
                .lineLimit(nil) // Ensures that all text is displayed
                .fixedSize(horizontal: false, vertical: true) // Prevents truncation
                .offset(y: -350)
            
            
        }
        .background(Color.black) // Ensure the background is dark for white text
        .edgesIgnoringSafeArea(.all) // Covers the whole screen
    }
}
