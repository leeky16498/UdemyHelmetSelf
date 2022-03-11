//
//  FeaturedItemView.swift
//  UdemyHelmetSelf
//
//  Created by Kyungyun Lee on 11/03/2022.
//

import SwiftUI

struct FeaturedItemView: View {
    
    //MARK: - properties
    
    let player : Player
    
    //MARK: - body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//struct FeaturedItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeaturedItemView(player: players[0])
//            .previewLayout(.sizeThatFits)
//            .padding()
//            .background(colorBackground)
//    }
//}
