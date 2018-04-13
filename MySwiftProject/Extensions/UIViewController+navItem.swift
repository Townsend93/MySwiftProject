//
//  UIViewController+navItem.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/1/19.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import Foundation
import UIKit

public extension UIViewController {
    
    //MARK: createBtn
    fileprivate func createBtn (withTitle title: String, normalColor: UIColor?, highlightedColor: UIColor?, disableColor: UIColor = navItemDisableColor) -> UIButton {
        
        let btn: UIButton = UIButton(type: .custom)
        btn.setTitle(title, for: .normal)
        
        btn.titleLabel?.font = navItemFont
        btn.setTitleColor(normalColor, for: .normal)
        btn.setTitleColor(highlightedColor, for: .highlighted)
        btn.setTitleColor(disableColor, for: .disabled)
        
        let titleWidth = title.getWidth(withFont: (btn.titleLabel?.font)!, height: 30)
        btn.frame = CGRect(x: 0, y: 0, width: titleWidth, height: navItemHeight)
    
        return btn
    }
    
    fileprivate func createBtn (withImage normalImage:UIImage, highlightedImage: UIImage?) -> UIButton {
        
        let btn: UIButton = UIButton(type: .custom)
        
        btn.setImage(normalImage, for: .normal)
        btn.setImage(highlightedImage, for: .highlighted)
        
        btn.frame = CGRect(x: 0, y: 0, width: normalImage.size.width, height: navItemHeight)
        
        return btn
    }
    
    //systemMargin
    
    fileprivate func systemSpace () -> CGFloat {
        
        var margin: CGFloat = 12
        switch kScreenWidth {
        case 320:
            margin = 12
        case 375:
            margin = 16
        default:
            margin = 20
        }
        
        return margin + 5//item自带边距5
    }
    
    //insertFixSpace
    
    fileprivate func insertFixSpace (items:[UIBarButtonItem]) -> [UIBarButtonItem] {
        
        var nItems = Array<UIBarButtonItem>()
        for value in items {
            
            let space = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
            space.width = navItemMargin - systemSpace()
            nItems.append(space)
            nItems.append(value)
            
        }
        
         return nItems
    }
    
   
     //MARK: left
   public func setNavLeftItem (withTitle title: String, normalColor: UIColor?, highlightedColor: UIColor?) -> UIButton {
        
        let btn = createBtn(withTitle: title, normalColor: normalColor ?? navItemNormalColor, highlightedColor: highlightedColor ?? navItemHighlightColor)
        btn.addTarget(self, action: #selector(leftClick(sender:)), for: .touchUpInside)
        let item = UIBarButtonItem(customView: btn)
        navigationItem.leftBarButtonItems = insertFixSpace(items: [item])
        
        return btn
    }
    
    public func setNavLeftItem (withImage normalImage: UIImage, highlightedImage: UIImage?) -> UIButton {
        
        let btn = createBtn(withImage: normalImage, highlightedImage: highlightedImage)
         btn.addTarget(self, action: #selector(leftClick(sender:)), for: .touchUpInside)
        let item = UIBarButtonItem(customView: btn)
        navigationItem.leftBarButtonItems = insertFixSpace(items: [item])
        
        return btn
    }
    
    //MARK: right
    
    public func setNavRightItem (withTitle title: String,normalColor: UIColor?, highlightedColor: UIColor?) -> UIButton {
        
        let btn = createBtn(withTitle: title, normalColor: normalColor ?? navItemNormalColor, highlightedColor: highlightedColor ?? navItemHighlightColor)
        btn.addTarget(self, action: #selector(rightClick(sender:)), for: .touchUpInside)
        let item = UIBarButtonItem(customView: btn)
        navigationItem.rightBarButtonItems = insertFixSpace(items: [item])
        
        return btn
    }
    
    public func setNavRightItem (withImage normalImage: UIImage, highlightedImage: UIImage?) -> UIButton {
        
        let btn = createBtn(withImage: normalImage, highlightedImage: highlightedImage)
        btn.addTarget(self, action: #selector(rightClick(sender:)), for: .touchUpInside)
        let item = UIBarButtonItem(customView: btn)
        navigationItem.rightBarButtonItems = insertFixSpace(items: [item])
        
        return btn
    }
    
    //MARK: middle
    
    public func setNavTitle (_ navTitle: String?, titleColor: UIColor?) {
        
        let lab = UILabel()
        lab.text = navTitle
        lab.textColor = titleColor ?? navTitleColor
        lab.font = navTitleFont
        
        let titleWidth = navTitle?.getWidth(withFont: lab.font, height:navItemHeight)
        lab.frame = CGRect(x: 0, y: 0, width: titleWidth ?? 0, height: navItemHeight)
        
        navigationItem.titleView = lab
        
    }
    
    
    //MARK: btnAction
    @objc func leftClick (sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func rightClick (sender: UIButton) {
        
    }
}
