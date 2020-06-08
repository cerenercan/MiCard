//
//  ContentView.swift
//  MiCard
//
//  Created by Ceren Ercan on 17.05.2020.
//  Copyright © 2020 Ceren Ercan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //rgb(162, 155, 254)
        ZStack{
            Color(red: 0.42, green: 0.36, blue: 0.91)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("ceren")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Ceren Ercan")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                Text("Computer Science Student")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .italic()
                Divider()
                InfoView(text: "+90 534 411 5344", imageName: "phone.circle.fill", cornerRadius: 25, colorRed: 0.64, colorGreen: 0.61, colorBlue: 1.00, frameHeight: 50, imageForegroundColor: .white, textSize: 25, textForegroundColor: .white)
                InfoView(text: "ercancerenn@gmail.com", imageName: "envelope.circle.fill", cornerRadius: 25, colorRed: 0.64, colorGreen: 0.61, colorBlue: 1.00, frameHeight: 50, imageForegroundColor: .white, textSize: 25, textForegroundColor: .white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


