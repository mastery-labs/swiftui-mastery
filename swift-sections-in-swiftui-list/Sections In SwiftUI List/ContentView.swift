//
//  ContentView.swift
//  Sections In SwiftUI List
//
//  Created by admin on 7/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Sections In SwiftUI List")
                .padding(.top, 20)
                .font(.title3)
                .fontWeight(.bold)
            
            List {
              
                Section(header: Text("Section 1")) {
                    Text("Section 1 - Row1")
                    Text("Section 1 - Row2")
                    Text("Section 1 - Row3")
                }
                
                Section(header: Text("Section 2"), footer: HStack {
                    Image(systemName: "star")
                    Text("may you successed.")
                }) {
                    Text("Section 2 - Row1")
                    Text("Section 2 - Row2")
                    Text("Section 2 - Row3")
                }
            }
            .cornerRadius(20)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
