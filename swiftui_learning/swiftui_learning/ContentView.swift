//
//  ContentView.swift
//  swiftui_learning
//
//  Created by Днепров Данила on 04/10/2019.
//  Copyright © 2019 Днепров Данила. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    VStack{

        // Map
        MapView()
            .frame(height: 300).edgesIgnoringSafeArea(.top)
        
        // Image
        CircleImage().offset(y: -130).padding(.bottom, -130)
        
        // TextViews
        VStack (alignment: .leading){
                 Text("Some Place")
                    .font(.title)
                HStack{
                    Text("Place description").font(.subheadline)
                    Spacer()
                    Text("Moscow").font(.subheadline)
                }
         }.padding()
        Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
