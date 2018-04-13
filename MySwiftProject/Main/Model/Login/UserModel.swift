//
//  UserModel.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/1/31.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import UIKit

class UserModel: BaseModel {

    var code: Int?
    var msg: String = ""
    
    var info: User?
    
   
    
}

class User: BaseModel {
    
    var account: String = ""
    var password: String = ""
    
    var AliasID: String = ""
    var InvitationCode: String = ""
    var Token: String = ""

   
    
}
