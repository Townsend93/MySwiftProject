//
//  UIKitTool.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/1/26.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import UIKit

class UIKitTool: NSObject {

    static func createLable(frame: CGRect, text: String, font: UIFont, numberOfLines: Int, textColor: UIColor, textAlignment: NSTextAlignment) -> UILabel {
        
        let lab = UILabel(frame: frame)
        lab.text = text
        lab.font = font
        lab.textColor = textColor
        lab.textAlignment = textAlignment
        lab.numberOfLines = numberOfLines
        lab.backgroundColor = UIColor.white
        
        return lab
    }
    
    static func createTextField(frame: CGRect, text: String?, placeHolder: String?, font: UIFont, textColor: UIColor) -> UITextField {
        
        let tf = UITextField(frame: frame)
        tf.text = text
        tf.font = font
        tf.placeholder = placeHolder
        tf.textColor = textColor
        tf.backgroundColor = UIColor.white
        
        return tf
    }
    
    static func createButton(frame: CGRect, normalText: String?,font: UIFont, normalImage: UIImage?,normalTitleColor: UIColor?) -> UIButton {
        
        let btn = UIButton(type: .custom)
        btn.titleLabel?.font = font
        btn.setTitle(normalText, for: .normal)
        btn.setImage(normalImage, for: .normal)
        btn.setTitleColor(normalTitleColor ?? UIColor(0x333333), for: .normal)
        
        return btn
    }
    
    
    
    
}
