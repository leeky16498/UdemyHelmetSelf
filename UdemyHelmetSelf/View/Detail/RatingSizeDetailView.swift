//
//  RatingSizeDetailView.swift
//  UdemyHelmetSelf
//
//  Created by Kyungyun Lee on 11/03/2022.
//

import SwiftUI

struct RatingSizeDetailView: View {
    
    let sizes : [String] = ["XS","S", "K"]
    
    var body: some View {
        HStack(alignment:.top, spacing: 3) {
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                HStack(alignment : .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) {item in
                        Image(systemName: "star.fill")
                            .frame(width : 28, height : 28, alignment: .center)
                            .background(colorGray.cornerRadius(12))
                            .foregroundColor(.white)
                    }
                })
            })
            
            Spacer()
            
            //size
            
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) {item in
                        Button(action: {
                            
                        }, label: {
                            Text(item)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width : 28, height : 28)
                                .background(
                                    Color.white.cornerRadius(5)
                                )
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.gray, lineWidth: 2)
                                )
                        })
                    }
                })
                
            })
        }//hst
    }
}

struct RatingSizeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizeDetailView()
    }
}
