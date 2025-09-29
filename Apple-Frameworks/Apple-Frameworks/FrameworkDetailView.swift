//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by İreemmmm on 23.09.2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width:44,height:44)
              }
            }
            .padding()
            
            Spacer()
            FrameworkTitleView(frameworkItem: framework)
                               
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button {
                
            } label: {
                ButtonView(buttonTitle: "Learn More")
                   
                
            }
            
            
        
        }
    }
}











struct FrameworkDetailView_Previews: PreviewProvider {
 static var previews: some View {
     FrameworkDetailView(framework: MockData.sampleFramework)
         
 }
}
