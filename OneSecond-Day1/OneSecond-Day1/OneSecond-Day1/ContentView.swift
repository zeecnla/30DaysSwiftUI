//
//  ContentView.swift
//  OneSecond-Day1
//
//  Created by Cesar Melchor on 3/31/20.
//  Copyright © 2020 Cesar Melchor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var time = 0.0;
    
    //got code from original challenge
    var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            self.time += 0.1
        }
    }
    
    var body: some View {
        ZStack { 
           Color(#colorLiteral(red: 0.9668827653, green: 0.7796407342, blue: 0.3437191546, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack(spacing:CGFloat(20)) {
                HStack {
                    Group {
                        Text(timeString(time: time))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(Font.system(size: 100))
                        .font(Font.system(.headline, design: .monospaced))
                        .bold()
                        .italic()
                        .onAppear(perform: {
                            _ = self.timer
                        })
                            
                        Text("s")

                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(Font.system(size: 100))
                        .font(Font.system(.headline, design: .monospaced))
                        .bold()
                        .italic()
                    }
                }
                .shadow(color: Color.black.opacity(0.25), radius:16,x:0, y:4)
                Spacer()
                .frame(height: 300)
                Group {
                    Button(action: {
                        //increase the seconds by one
                        self.time = self.time+1.0;
                    }, label: {
                        Text("+1s")
                        .font(Font.system(size: 34))
                        .font(Font.system(.headline, design: .monospaced))
                        .fixedSize()
                        .frame(width: 150, height: 20)
                        .foregroundColor(.white)
                        .padding(35)
                        .background(RoundedRectangle(cornerRadius: 20).fill( Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))))
                        .compositingGroup()
                            .shadow(color: Color.black.opacity(0.25), radius: 16, x:0, y:10)
                        .opacity(1.0)
                            
                        
                    })
                    Spacer()
                        .frame(height:5)
                    Text("made by @zeecnla")
                        .foregroundColor(Color.black.opacity(0.70))
                    .font(Font.system(size: 20))
                    .font(Font.system(.headline, design: .monospaced))
                    .bold()
                }
            }
        }
        
    }
    
    //got code from original challenge
    func timeString(time: Double) -> String {
        return String(format: "%.1f", time)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
