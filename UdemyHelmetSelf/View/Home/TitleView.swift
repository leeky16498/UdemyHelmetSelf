//
//  TitleView.swift
//  UdemyHelmetSelf
//
//  Created by Kyungyun Lee on 11/03/2022.
//

import SwiftUI

struct TitleView: View {
    
    var title : String
    
    var body: some View {
        HStack {
            Text("Helmet")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }
        .padding(.horizontal, 15)
        .padding(.top, 15)
        .padding(.bottom, 15)
    }
}

//struct TitleView_Previews: PreviewProvider {
//    static var previews: some View {
//        TitleView()
//    }
//}
