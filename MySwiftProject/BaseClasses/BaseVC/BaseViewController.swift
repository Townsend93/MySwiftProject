//
//  BaseViewController.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/1/19.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import Foundation
import UIKit
import MJRefresh

class BaseViewController: UIViewController {
    
    lazy var tableView: UITableView = {
        let tab = UITableView(frame: view.bounds, style: .plain)
        tab.render()
        return tab
    }()
    
    var pageIdx = 0
    
    var recordCount = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = pageColor
        
        
    }
    
    func setupRefresh () {
        
        tableView.mj_header = MJRefreshNormalHeader(refreshingBlock: {[weak self] in
           self?.refresh()
        })
        
        tableView.mj_footer = MJRefreshAutoNormalFooter(refreshingBlock: {[weak self] in
           self?.loadMore()
        })
        tableView.mj_footer.isAutomaticallyHidden = true
    }
    
    func refresh() {
        pageIdx = 0
    }
    
    func loadMore() {
        pageIdx += 1
    }
    
    
    @objc func fit_screen() {
        var navH: CGFloat = 64//默认情况下还是64pt，iPhoneX = 44+44
        //var tabBarH: CGFloat = 49// iPhoneX =  49+34
        if #available(iOS 11.0, *) {
            if (navigationController?.navigationBar.prefersLargeTitles)! {
                navH = 96
            }
        } else {
            // Fallback on earlier versions
        }
        
        print(navH)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    
}
