//
//  NetworkTool.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/1/23.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import Foundation
import Alamofire


let baseUrl = "http://112.74.101.72:6104/Api.ashx?"
let server_version = "1.0"


typealias TCSuccessBlock = (_ response: Any?) -> ()
typealias TCFailureBlock = (_ error: Error?) -> ()

class NetworkTool: NSObject {
    
   public enum HttpMethod {
        case get
        case post
    }
    
    //
    public static func request(httpMethod: HttpMethod = .post, isNeedToken: Bool = true, param:[String:Any]?, successBlcok: @escaping TCSuccessBlock, failureBlock: @escaping TCFailureBlock) -> () {
        
        let method: HTTPMethod = httpMethod == .get ? .get : .post
        
        var dic :[String:Any] = param ?? [:]
        dic["version"] = server_version
        if isNeedToken {
            dic["token"] = SaveTool.getToken()
        }
        
        Alamofire.request(baseUrl, method: method, parameters: dic ,      encoding: URLEncoding.default).responseJSON { (response) in
            
            guard response.result.isSuccess else {//失败
                failureBlock(response.error)
                return
            }
            
            let json = response.result.value as? [String: Any]
            let code = Int((json?["Code"] as? String) ?? "123")
            
                //code 处理
            guard  code  == 000 else {//成功
                   successBlcok(response.result.value)
                return
            }
            guard code == 997 else {//token过期
                //自动登录
                LoginViewModel.autoLogin {
                    print("自动登录成功")
                    request(httpMethod: httpMethod, isNeedToken: isNeedToken, param: param, successBlcok: successBlcok, failureBlock: failureBlock)
                }
                return
            }
            
                //错误处理
            handleCode(code!)
            
           
            
        }
        
    }
    
    
    //MARK: 错误处理
    fileprivate static func handleCode (_ code: Int) {
        var errorStr = ""
        
        switch code {
        case 995:
            errorStr = ""
        default:
            errorStr = ""
        }
        print(errorStr)
    }
    
    
    
}
