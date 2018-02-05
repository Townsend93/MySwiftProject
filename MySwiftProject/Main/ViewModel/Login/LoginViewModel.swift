//
//  LoginViewModel.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/1/26.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import UIKit

class LoginViewModel: NSObject {

    public class func login(account: String, password: String, loginBlock: @escaping ()->()) {
        
        NetworkTool.request(isNeedToken:false, param: ["action":"login","account":account, "password":password], successBlcok: { (response) in
            
            var dic = response as? [String: Any];
            
            
            SaveTool.save(value: dic?["Data"], forKey: kAccountInfoKey)
            
            SaveTool.save(value: ["account":account, "password":password], forKey: kLogin_currentAccount)
            
            SaveTool.save(value: true, forKey: kIsLogin)
            
            print(SaveTool.getToken())
            
            loginBlock()
            
        }) { (error) in
            print(error!)
        }
        
    }
    
    public class func autoLogin(successBlock: @escaping ()->()) {
        
        let accountDic = SaveTool.getCurrentAccount()
      
        login(account: accountDic["account"] ?? "", password: accountDic["password"] ?? "", loginBlock: {
             successBlock()
        })
        
    }
    
    public class func isLogined () -> Bool {
      
        let isLogin = SaveTool.getValue(forKey: kIsLogin) as? Bool
        return isLogin ?? false
    }
    
    
    
}
