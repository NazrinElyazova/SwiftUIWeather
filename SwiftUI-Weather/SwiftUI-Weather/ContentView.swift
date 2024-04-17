//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Nazrin on 15.04.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
                
                VStack {
                    Text("Cupertino, CA").font(.system(size: 32, weight: .medium, design: .default)).foregroundStyle(.white)
                        .padding()
                    
                    VStack {
                        Image(systemName: "cloud.sun.fill").renderingMode(.original).resizable().aspectRatio(contentMode: .fit)
                            .frame(width: 180)
                        Text("76°")
                            .font(.system(size: 70, weight: .medium))
                            .foregroundStyle(.white)
                    }
                    
                    HStack {
                        VStack {
                            Text("TUE").font(.system(size: 16, weight: .medium, design: .default))
                                .foregroundStyle(.white)
                            
                            
                            
                            Image(systemName: "cloud.sun.fill").renderingMode(.original).resizable().aspectRatio(contentMode: .fit)
                                .frame(width: 40);                             Text("54°")
                                .font(.system(size: 28, weight: .medium))
                                .foregroundStyle(.white)
                        }
                        
                      
                    }
                    Spacer()
                    
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
