//
//  ArchiveList.swift
//  scientificCalculator
//
//  Created by Devin Maleke on 06/09/23.
//

import SwiftUI

struct ArchiveList: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Training #1")
                .font(.title)
                .foregroundColor(.white)
                .padding(.bottom,2)
            Text("12 Oktober 2023")
                .foregroundColor(.white)
                
            HStack{
                Spacer()
                Image(systemName: "chevron.right.circle.fill")
                     .imageScale(.large)
                     .foregroundColor(.blue)
            }
            
        }
        .padding()
        .background(Color(red: 0.15, green: 0.15, blue: 0.15))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct ArchiveList_Previews: PreviewProvider {
    static var previews: some View {
        ArchiveList()
    }
}
