//
//  QuantityDetailView.swift
//  UdemyHelmetSelf
//
//  Created by Kyungyun Lee on 11/03/2022.
//

import SwiftUI

struct QuantityDetailView: View {
    
    @State var count : Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if count > 0 {
                    count -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(count)")
                .fontWeight(.semibold)
                .frame(minWidth : 36)
            
            Button(action: {
                if count < 100 {
                    count += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        })
        .font(.title)
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityDetailView()
    }
}
