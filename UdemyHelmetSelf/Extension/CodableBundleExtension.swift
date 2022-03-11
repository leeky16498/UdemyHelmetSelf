//
//  CodableBundleExtension.swift
//  UdemyHelmetSelf
//
//  Created by Kyungyun Lee on 11/03/2022.
//

import Foundation


extension Bundle {
    
    func decode<T: Codable>(_ file: String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("error")
        }
        
        return decodedData
        
    }
    
    
}
