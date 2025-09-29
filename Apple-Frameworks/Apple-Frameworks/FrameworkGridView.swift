//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by İreemmmm on 22.09.2025.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
   
  
    var body: some View {
        
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks) { framework in // take the object at a framework and hash it  and give it its own kind of identifier ( i am talking about /.self)
                        NavigationLink(value: framework){
                            FrameworkTitleView(framework: framework)
                        }
                                        
                }
            }
        }
            .navigationTitle("Apple Frameworks")
            .navigationDestination(for: Framework.self){
                framework in FrameworkDetailView(framework: framework)
            }
           
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
