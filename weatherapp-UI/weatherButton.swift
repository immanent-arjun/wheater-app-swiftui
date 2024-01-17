//
//  weatherButton.swift
//  weatherapp-UI
//
//  Created by Sonoma on 17/01/24.
//

import SwiftUI

struct weatherButton: View {
    var title: String
    var textcolor: Color
    var backgroundColor: Color
    var body: some View{
        Text(title)
            .foregroundStyle(textcolor)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .clipShape(.rect(cornerRadius: 50))
    }
}
