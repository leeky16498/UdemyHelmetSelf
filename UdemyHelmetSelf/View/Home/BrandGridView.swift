//
//  BrandGridView.swift
//  UdemyHelmetSelf
//
//  Created by Kyungyun Lee on 11/03/2022.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content:  {
            LazyHGrid(rows : gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { item in
                    BrandItemView(brand: item)
                }
            })
            .frame(height : 200)
            .padding(15)
        })
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
    }
}
