//
//  SectionView.swift
//  UdemyHelmetSelf
//
//  Created by Kyungyun Lee on 11/03/2022.
//

import SwiftUI

struct SectionView: View {
    
    @State var rotateClockWise : Bool
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            Spacer()
        }//vst
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

//struct SectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        SectionView()
//    }
//}
