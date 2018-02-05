//
//  SaveTool.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/1/23.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import Foundation


class SaveTool: NSObject {
    
   public class func save(value: Any?, forKey key: String)  {
        
        let userDef = UserDefaults.standard
        userDef.set(value, forKey: key)
       
    }
    
    public class func getValue(forKey: String) -> Any? {
       return UserDefaults.standard.value(forKey:forKey)
    }
    
    
    public class func getToken() -> String {
        let dic =  UserDefaults.standard.object(forKey: kAccountInfoKey) as? Dictionary<String, Any>
        return (dic?["Token"] as? String) ?? ""
    }
    
    public class func getCurrentAccount () -> [String: String] {
        let dic =  UserDefaults.standard.object(forKey: kLogin_currentAccount) as? [String: String]
        return dic ?? [:]
    }
    
    
    //MAKR: obj
    
    public class func saveObj(obj: Any, forKey key: String) {
        
        let data = NSKeyedArchiver.archivedData(withRootObject: obj)
        save(value: data, forKey: key)
    }
    
    public class func getObj(_ key: String) -> Any? {
        
        if let data =  UserDefaults.standard.object(forKey: key) {
            
             let obj =  NSKeyedUnarchiver.unarchiveObject(with: data as! Data)
            
            return obj
        }
        return nil
    }
    
}
