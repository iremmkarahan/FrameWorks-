//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by İreemmmm on 29.09.2025.
//

import SwiftUI
import Combine


// if your not going to subclass your class make it final

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
