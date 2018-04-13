//
//  DataModel.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/4/3.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import UIKit

class DataModel: NSObject {

    var pageSize = 20
    
    var limitCount = 20
    
    var pageIndex = 1
    
    func canLoadMore() -> Bool {
       return (limitCount - 1) / pageSize > pageIndex - 1
    }
    
    func loading(action: String, params: [String: Any]?) -> () {
    
        NetworkTool.request(httpMethod: .get, isNeedToken: true, param: params, successBlcok: { (response) in
            
            
        }) { (error) in
            
        }
    }
    
    func refresh() -> () {
        
    }
    
    func loadMore() -> () {
        
    }
    
}
