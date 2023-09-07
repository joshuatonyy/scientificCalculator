//
//  NotesView.swift
//  scientificCalculator
//
//  Created by Devin Maleke on 06/09/23.
//

import SwiftUI

struct NotesView: View {
    var body: some View {
        
        NavigationStack{
            VStack(alignment: .leading){
                Text("Your Archives")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Divider()
                
                ScrollView{
                    LazyVStack{
                        ForEach(0...5, id: \.self) { item in
                            ArchiveList()
                        }
                    }
                }
                
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                        print("Add")
                    }label: {
                        Text("Add")
                    }
                    
                }
            
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        print("Edit")
                    }label: {
                        Text("Edit")
                    }
                }
            }
        }
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
