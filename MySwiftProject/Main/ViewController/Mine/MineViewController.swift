//
//  MineViewController.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/4/3.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import UIKit

protocol AccountProtocol {
    
    var account: String { get }
    
    var password: String { get set }
}


class MineViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let path = Bundle.main.path(forResource: "test1", ofType: "jpg")
        
        let img = UIImageView(frame: CGRect(x: 20, y: 100, width: 200, height: 300))
       
        img.centenX = view.centenX
        img.image = UIImage(contentsOfFile: path!)
        img.backgroundColor = UIColor.red
        img.contentMode = .scaleAspectFill//填充满view，保持要来的比例，会超出view
        view.addSubview(img)
        
        let img1 = UIImageView(frame: CGRect(x: 20, y: 100+200+50, width: 300, height: 200))
        img1.centenX = view.centenX
        img1.image = UIImage(contentsOfFile: path!)
        img1.backgroundColor = UIColor.blue
        img1.contentMode = .scaleAspectFit//保持原来的比例，填充view，不会超出view，可能不会填充满。
        view.addSubview(img1)
        
        let img2 = UIImageView(frame: CGRect(x: 20, y: 100+400+100, width: 300, height: 200))
        img2.centenX = view.centenX
        img2.image = UIImage(contentsOfFile: path!)
        img2.backgroundColor = UIColor.blue
        img2.contentMode = .scaleToFill//defualt，填充满view，会拉伸图片，导致变形
        view.addSubview(img2)
        
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
