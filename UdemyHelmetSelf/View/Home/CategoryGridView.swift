//
//  CategoryGridView.swift
//  UdemyHelmetSelf
//
//  Created by Kyungyun Lee on 11/03/2022.
//

import SwiftUI

struct CategoryGridView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                
                Section(
                    header: SectionView(rotateClockWise: false),
                    footer: SectionView(rotateClockWise: true)
                ) {
                    ForEach(categories) { item in
                        CategoryItemView(category: item)
                        
                    }
                }
            })
            .frame(height : 140)
            .padding(.horizontal)
            .padding(.vertical, 10)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
