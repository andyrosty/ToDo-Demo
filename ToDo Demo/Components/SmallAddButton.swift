//
//  SmallAddButton.swift
//  ToDo Demo
//
//  Created by Andrew Acheampong on 11/1/23.
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 50)
                .foregroundColor(Color(hue: 0.942, saturation: 0.582, brightness: 0.761))
            
            Text("+")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.heavy)
                .foregroundColor(.black)
        }
        .frame(height: 50)
    }
}

#Preview {
    SmallAddButton()
}
