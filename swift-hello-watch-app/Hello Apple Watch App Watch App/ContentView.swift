//
//  ContentView.swift
//  Hello Apple Watch App Watch App
//
//  Created by admin on 7/20/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var overlayText = OverlayText()
    var body: some View {
        VStack {
            Image("bitcooker")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .padding()
                .overlay{
                    Text(overlayText.text)
                        .font(.title3)
                        .padding(.top,80)
                        .buttonStyle(.plain)
                }
            Text("My First Watch App")
        }
        .padding()
        .onTapGesture {
            print("Hello Watch App!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
