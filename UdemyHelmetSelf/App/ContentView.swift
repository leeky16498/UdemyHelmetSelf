//
//  ContentView.swift
//  UdemyHelmetSelf
//
//  Created by Kyungyun Lee on 11/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - properties
    
    //MARK: - body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top,
                             UIApplication.shared.windows.first?.safeAreaInsets.top)
                //노치의 인셋을 잡아주는 코드이다.,
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content : {
                    VStack(spacing: 0) {
                        
                        FeaturedTabView()
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmet")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15) {
                            ForEach(products) {item in
                                ProductItemView(product: item)
                            }
                        }
                        .padding() 
                        
                        TitleView(title: "Brands")
                        
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                        
                    }
                })
            }//vst
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }// zst
        .ignoresSafeArea(.all, edges: .top)
    }
}

    //MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
