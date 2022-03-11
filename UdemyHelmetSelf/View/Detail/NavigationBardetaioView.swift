//
//  NavigationBardetaioView.swift
//  UdemyHelmetSelf
//
//  Created by Kyungyun Lee on 11/03/2022.
//

import SwiftUI

struct NavigationBardetailView: View {
    var body: some View {
        HStack{
            Button(action: {
                
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "cart")
                    .foregroundColor(.white)
            })
        }
    }
}

//struct NavigationBardetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationBardetaioView()
//    }
//}
