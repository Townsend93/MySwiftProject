//
//  UITableViewExtension.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/3/23.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import Foundation
import UIKit


extension UITableView {
    
    public func render() {
        backgroundColor = tableColor
        tableFooterView = UIView()
        separatorColor = partingLineColor
        let kInset: UIEdgeInsets = separatorInset
        separatorInset = UIEdgeInsetsMake(kInset.top, 12, kInset.bottom, kInset.right)
    }
    
    
}
