//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Nazrin on 15.04.24.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        VStack {
            ZStack {
                BackgrounColorView(topColor: isNight ? .black : .blue, bottomColor: isNight ? .gray : Color("lightBlue"))
                
                VStack {
                    CityTextView(cityName: "Cupertino, CA")
                    StatusOfCity(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                    HStack {
                        Spacer()

                        WeatherDayView(dayOfWeek: "MON",
                                       temperature: 74,
                                       imageName: "cloud.sun.fill")
                        Spacer()
                        
                        WeatherDayView(dayOfWeek: "TUE",
                                       temperature: 88,
                                       imageName: "sun.max.fill")
                        Spacer()

                        WeatherDayView(dayOfWeek: "WED",
                                       temperature: 55,
                                       imageName: "wind.snow")
                        Spacer()

                        WeatherDayView(dayOfWeek: "THU",
                                       temperature: 67,
                                       imageName: "sunset.fill")
                        Spacer()

                        WeatherDayView(dayOfWeek: "FRI",
                                       temperature: 25,
                                       imageName: "snow")
                        Spacer()
                    }
                    Spacer()
                    Button {
                        isNight.toggle()
                    } label: {
                        WeatherButton(buttonLabel: "Change Day Time", textColor: .blue, backgroundColor: .white)
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

struct WeatherDayView: View {
    var dayOfWeek: String
    var temperature: Int
    var imageName: String
    var body: some View {
        
        VStack {
            Text(dayOfWeek).font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            
            
            
            Image(systemName: imageName).renderingMode(.original).resizable().aspectRatio(contentMode: .fit)
                .frame(width: 40);                             Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
             
        }
    }
}

struct BackgrounColorView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName).font(.system(size: 32, weight: .medium, design: .default)).foregroundStyle(.white)
            .padding()
    }
}
struct StatusOfCity: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Image(systemName: imageName).renderingMode(.original).resizable().aspectRatio(contentMode: .fit)
                .frame(width: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}

