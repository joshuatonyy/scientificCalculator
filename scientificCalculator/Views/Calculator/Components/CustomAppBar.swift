//
//  CustomAppBar.swift
//  scientificCalculator
//
//  Created by Joshua on 05/09/23.
//

import SwiftUI

struct CustomAppBar: View {
    @Binding var defaultType: String
    var calculatorTypes = ["Basic", "Scientific"]
    
    var body: some View {
            HStack{
                //Back Button
                HStack(spacing: 5){
                    Image(systemName: "chevron.backward")
                        .frame(width: 18, height: 24)
                        .foregroundColor(Color(red: 0.04, green: 0.52, blue: 1))
                        .multilineTextAlignment(.leading)
                    Text("Back")
                        .font(Font.custom("SF Pro Text", size: 17))
                        .foregroundColor(Color(red: 0.04, green: 0.52, blue: 1))

                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .onTapGesture {
                }
                
                
                //Picker
                HStack {
                    Picker("Calculator Type", selection: $defaultType){
                        ForEach(calculatorTypes, id:\.self){
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    .fixedSize()
                    
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                
                //Save Button
                HStack(spacing: 5){
                    Text("Back")
                        .font(Font.custom("SF Pro Text", size: 17))
                        .foregroundColor(Color(red: 0.04, green: 0.52, blue: 1).opacity(0))
                    Image(systemName: "tray.and.arrow.down")
                        .frame(width: 18, height: 24)
                        .foregroundColor(Color(red: 0.04, green: 0.52, blue: 1))
                        .onTapGesture {
                            
                        }
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .padding(8)
        
    }
}

struct CustomAppBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomAppBar(defaultType: MainCalculatorView().$defaultType).preferredColorScheme(.dark)
    }
}
