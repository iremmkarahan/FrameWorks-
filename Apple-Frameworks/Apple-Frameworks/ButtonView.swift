//
//  ButtonView.swift
//  Apple-Frameworks
//
//  Created by İreemmmm on 29.09.2025.
//

import SwiftUI

struct ButtonView: View {
    
    var buttonTitle: String
    var body: some View {
        Text(buttonTitle)
        .frame(width: 280, height:50)
        .background(Color.red)
        .foregroundColor(Color.white)
        .font(.title2)
        .fontWeight(.semibold)
        .cornerRadius(10)
       
    }
}


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonTitle: "Test Title")
    }
}
