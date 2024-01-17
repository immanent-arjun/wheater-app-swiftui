//
//  weatherView.swift
//  weatherapp-UI
//
//  Created by Sonoma on 16/01/24.
//

import SwiftUI

struct weatherView: View {
    var dayName: String
    var ImageName: String
    var temp: Int
    
    var body: some View {
        VStack{
            Text(dayName)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.white)
            Image(systemName: ImageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temp)°")
                .font(.system(size: 32, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    weatherView(dayName: "MON", ImageName: "cloud.sun.fill", temp: 76)
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor : Color
    var body: some View{
        LinearGradient(colors: [topColor,bottomColor], startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
