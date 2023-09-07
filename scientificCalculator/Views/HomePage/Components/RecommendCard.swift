//
//  ReccomendCard.swift
//  scientificCalculator
//
//  Created by Devin Maleke on 05/09/23.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct ReccomendCard: View {
    var body: some View {
        
        ZStack(alignment: .bottom){
            
            ZStack(alignment: .top){
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 140, height: 212)
                    .background(
                        LinearGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.08, green: 0.12, blue: 0.27), location: 0.16),
                                Gradient.Stop(color: Color(red: 0.04, green: 0.52, blue: 1), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0.04, y: 1),
                            endPoint: UnitPoint(x: 1.18, y: 0.5)
                        )
                    )
                    .cornerRadius(10)
                
                Text("XYZ")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.title)
                    .frame(width: 70)
                
                    .padding(.top, 20)
            }
                
        
                
    
                VStack(alignment: .leading){
                    Text("Solving graphs using sin cos tan")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .font(.footnote)
                        .padding(.top, 5)
                        .padding(.leading,5)
                        .padding(.trailing,20)
                        
                    
                    Spacer()
                    HStack{
                        Spacer()
                       Image(systemName: "chevron.right.circle.fill")
                            .imageScale(.medium)
                            .foregroundColor(.blue)
                            .padding(.trailing,5)
                            .padding(.bottom,20)
                    }.frame(height: 10)
                }
                .frame(width: 140, height: 83)
                .background(Color(red: 0.15, green: 0.15, blue: 0.15))
                .cornerRadius(10, corners: [.bottomLeft, .bottomRight])
                        
        }.frame(width: 140, height: 212)
    }
}

struct ReccomendCard_Previews: PreviewProvider {
    static var previews: some View {
        ReccomendCard()
    }
}
