//
//  BrandItemView.swift
//  UdemyHelmetSelf
//
//  Created by Kyungyun Lee on 11/03/2022.
//

import SwiftUI

struct BrandItemView: View {
    
    let brand : Brand
    
    var body: some View {
        
        Image(brand.image)
            .resizable()
            .scaledToFill()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray, lineWidth: 1)
            )
    }
}

//struct BrandItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        BrandItemView()
//    }
//}
