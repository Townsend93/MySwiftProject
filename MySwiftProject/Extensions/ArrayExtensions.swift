//
//  ArrayExstentions.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/3/16.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {

    func makeSameArray<T>(repeating item: T, numberOfTimes: Int) -> [T] {
        var result = [T]()
        for _ in 0..<numberOfTimes {
            result.append(item)
        }
        return result
    }
    
    // Remove first collection element that is equal to the given `object`:
   
    
   
    
    
}
