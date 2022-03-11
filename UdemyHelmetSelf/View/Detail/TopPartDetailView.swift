//
//  TopPartDetailView.swift
//  UdemyHelmetSelf
//
//  Created by Kyungyun Lee on 11/03/2022.
//

import SwiftUI

struct TopPartDetailView: View {
    
    @State var isAnimating : Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing : 6){
            VStack(alignment: .leading, spacing : 6){
                Text("price")
                    .fontWeight(.semibold)
                
                Text("\(sampleProduct.price)")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y : isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y : isAnimating ? 0 : -35)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
        //PRICE
        
        //Photo
        
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
    }
}
