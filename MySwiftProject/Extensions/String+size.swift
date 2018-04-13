//
//  String+size.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/1/22.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import Foundation
import UIKit

public extension String {
    
    
    
    func getSize(withFont font: UIFont, size: CGSize) -> CGSize {
        
        let attribute = [NSAttributedStringKey.font : font]
    
        let size =  self.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attribute, context: nil).size

        return size
    }
    
    func getWidth(withFont font: UIFont, height: CGFloat) -> CGFloat {
        
        let size =  getSize(withFont: font, size: CGSize(width: 1000, height: height))
        
        return size.width
    }
    
    func getHeight(withFont font: UIFont, width: CGFloat) -> CGFloat {
        
        let size =  getSize(withFont: font, size: CGSize(width: width, height: 10000))
        
        return size.height
    }
    
    
}
