//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by İreemmmm on 22.09.2025.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
  
    var body: some View {
        
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks, id: \.id) { framework in // take the object at a framework and hash it  and give it its own kind of identifier ( i am talking about /.self)
                        FrameworkTitleView(frameworkItem: framework)
                }
            }
        }
            .navigationTitle("Apple Frameworks")
           
        }
    }
}




struct FrameworkTitleView: View {
    
    let frameworkItem: Framework
    
  var body: some View {
        VStack {
            Image(frameworkItem.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(frameworkItem.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}


   
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
