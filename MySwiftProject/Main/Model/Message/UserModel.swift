//
//  UserModel.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/1/31.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import UIKit

class UserModel: NSObject {

    var account: String?
    var password: String?
    
    var AliasID: String?
    var InvitationCode: String?
    var Token: String?
    
    
    convenience init(_ dic:[String: Any]?) {
        
        self.init()
        account = dic?["account"] as? String
        password = dic?["password"] as? String
        
        AliasID = dic?["AliasID"] as? String
        InvitationCode = dic?["InvitationCode"] as? String
        Token = dic?["Token"] as? String
        
    }
    
}
