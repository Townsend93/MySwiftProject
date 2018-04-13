//
//  PersonBusiness.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/1/19.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import Foundation
import UIKit
import MJRefresh

class PersonBusiness: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    //MARK: properties
    
    
    fileprivate
    var productArr: Array = {
       return []
    }()
    
    //MARK: setup
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setNavTitle("person business", titleColor: nil)
        
        if #available(iOS 11.0, *) {
            //tableView.contentInsetAdjustmentBehavior = .never
        } else {
           //automaticallyAdjustsScrollViewInsets = false
        }
        
        tableView.register(PersonBusinessCell.classForCoder(), forCellReuseIdentifier: "PersonBusinessCell")
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        setupRefresh()
        
        _ = setNavRightItem(withTitle: "photo", normalColor: nil, highlightedColor: nil)
        
    }
    
    override func rightClick(sender: UIButton) {
        presentPhotoPicker()
    }
    
    //present photo
    func presentPhotoPicker() {
        
        NPhotoPrivacyAuthorizationManager.requestAuthorization { (type, state) -> (Void) in
            
            if type == NPhotoPrivacyAuthorizationManager.PrivacyType.library && state == NPhotoPrivacyAuthorizationManager.AuthorizationStatus.authorized {
                
                let imageController = NPhotoPickerViewController()
            
                imageController.maxCount = 9
               
                imageController.selectedImages(callback: { (images) -> (Void) in
                    print(images)
                })
            
                self.present(imageController, animated: true, completion: nil)
                //self.navigationController?.pushViewController(imageController, animated: true)
            
            } else {
                print("PrivacyType--%d, AuthorizationStatus--%d", type, state)
            }
        }
    }
    
    override func refresh() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
            self.tableView.mj_header.endRefreshing()
        }
    }
    
    override func loadMore() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
            self.tableView.mj_footer.endRefreshingWithNoMoreData()
        }
    }
    
    
    
    
    //tableDelegate,tableDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: PersonBusinessCell? = tableView.dequeueReusableCell(withIdentifier: "PersonBusinessCell") as? PersonBusinessCell
        cell?.selectionStyle = .none
        cell?.configureData(nil)
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}


