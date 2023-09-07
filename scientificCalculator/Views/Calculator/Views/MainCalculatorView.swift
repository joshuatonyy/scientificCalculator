//
//  MainCalculatorView.swift
//  scientificCalculator
//
//  Created by Joshua on 05/09/23.
//

import SwiftUI

struct MainCalculatorView: View {
    @State var defaultType: String = "Basic"
    
    var body: some View {
        NavigationView{
            VStack{
                CustomAppBar(defaultType: $defaultType)
                Spacer()
                if defaultType == "Basic" {
                    BasicCalculatorView()
                }
                else{
                    ScientificCalculatorView()
                }
                Spacer()
            }
        }
    }
}

struct MainCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        MainCalculatorView().preferredColorScheme(.dark)
    }
}


