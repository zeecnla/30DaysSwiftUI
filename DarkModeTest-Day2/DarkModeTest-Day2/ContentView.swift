//
//  ContentView.swift
//  DarkModeTest-Day2
//
//  Created by Cesar Melchor on 4/3/20.
//  Copyright © 2020 Cesar Melchor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.colorScheme) var  colorScheme: ColorScheme
    
    var body: some View {
        ZStack {
            Color.init(UIColor(named:"accentColor")!)
              .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                HStack{
                    VStack(alignment:.leading){
                        
                        Text("Now, is")
                            .font(.system(size:32, weight:.black))
                            .foregroundColor(Color(UIColor(named: "labelColor")!))
                            .multilineTextAlignment(.leading)
                        Text(colorScheme  == .light ? "Light    " : "Dark   ")
                            .font(colorScheme == .light ?  Font.custom("Condiment-Regular", size: 98) : Font.custom("Superclarendon", size: 78))
                            .foregroundColor(Color(UIColor(named: "labelColor")!).opacity(0.75))
                            .multilineTextAlignment(.leading)
                            .padding(.top, 20)
                            .frame(width: 250.0)
                    }
                    .padding(.trailing, 80)
                }
                Spacer()
                    .frame(height: 20, alignment: <#T##Alignment#>)
                Text("made by @zeecnla")
                .font(.system(size:16, weight:.black))
                .foregroundColor(Color(UIColor(named: "labelColor")!).opacity(0.75))
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
