//
//  ProductDetailView.swift
//  UdemyHelmetSelf
//
//  Created by Kyungyun Lee on 11/03/2022.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment : .leading, spacing: 5) {
            
            //NAVBAr
            NavigationBardetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //HEADER
            
            HeaderDetailView()
                .padding(.horizontal)
             
            //Detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1) // zstack에서 순서를 정해주는 것이다. 맨 앞으로 같은 기능.
            //detail bottom part
            
            VStack(alignment: .center, spacing: 0) {
                //rating
                RatingSizeDetailView()
                    .padding(.vertical)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                }) // scroll
                
                QuantityDetailView()
                    .padding()
                
                Spacer()
            }//vst
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
           
            //rating size
            //desctiption
            //quantity + favofite
            //Addtocart
            Spacer()
        }//vst
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
        )
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
