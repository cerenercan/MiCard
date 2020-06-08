//
//  InfoView.swift
//  MiCard
//
//  Created by Ceren Ercan on 8.06.2020.
//  Copyright © 2020 Ceren Ercan. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String //phoneNumber
    let imageName: String //sf image for phone
    let cornerRadius: CGFloat //25
    let colorRed: Double //0.64
    let colorGreen: Double //0.61
    let colorBlue: Double //1.00
    let frameHeight: CGFloat //50
    let imageForegroundColor: Color //white
    let textSize: CGFloat //25
    let textForegroundColor: Color //white
    
    var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(Color(red: colorRed, green: colorGreen, blue: colorBlue))
            .frame(height: frameHeight)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(imageForegroundColor)
                Text(text)
                    .font(.system(size: textSize))
                    .foregroundColor(textForegroundColor)
                    .bold()
                    .italic()
                
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+90 534 411 5344", imageName: "phone.circle.fill", cornerRadius: 25, colorRed: 0.64, colorGreen: 0.61, colorBlue: 1.00, frameHeight: 50, imageForegroundColor: .white, textSize: 25, textForegroundColor: .white)
            .previewLayout(.sizeThatFits)
    }
}
