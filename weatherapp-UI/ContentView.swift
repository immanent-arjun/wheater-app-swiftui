//
//  ContentView.swift
//  weatherapp-UI
//
//  Created by Sonoma on 16/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack{
            BackgroundView(topColor: isNight ? .black: .blue,
                           bottomColor:isNight ? .gray : Color("lightBlue"))
            VStack{
                Text("Mohali, PB")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                
                VStack(spacing:10){
                    Image(systemName: "cloud.sun.fill")
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 76, weight: .medium))
                        .foregroundStyle(.white)
                }
                
                .padding(.bottom,30)
                
                HStack(spacing:20){
                    weatherView(dayName: "MON",
                                ImageName: "cloud.sun.fill",
                                temp: 76)
                    weatherView(dayName: "TUE",
                                ImageName: "cloud.sun.bolt.fill",
                                temp: 55)
                    weatherView(dayName: "WED",
                                ImageName: "wind.snow",
                                temp: 30)
                    weatherView(dayName: "THU", 
                                ImageName: "sunset.fill",
                                temp: 88)
                    weatherView(dayName: "FRI",
                                ImageName: "snowflake",
                                temp: 20)
                }
                .padding(.bottom,40)
                Button {
                    isNight.toggle()
                }label: {
                    weatherButton(title: "Change Day Time",
                                  textcolor: .black,
                                  backgroundColor: .white)
                }
                Spacer()
            }
            
        }
    }
}

#Preview {
    ContentView()
}



