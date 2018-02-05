//
//  BaseViewController.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/1/19.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = pageColor
       
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
}
