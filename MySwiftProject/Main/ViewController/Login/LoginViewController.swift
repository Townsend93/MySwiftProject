//
//  LoginViewController.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/1/23.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: BaseViewController {
    
    public var isPush = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    
    //
    private func setupUI () {
        
        view.addSubview(accountTf)
        view.addSubview(passwordTf)
        view.addSubview(loginBtn)
        
        layoutSubViews()
    }
    
    
    //
    private func layoutSubViews() {
        
        accountTf.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(80)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.height.equalTo(55)
        }
        
        passwordTf.snp.makeConstraints { (make) in
            make.top.equalTo(accountTf.snp.bottom).offset(24)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.height.equalTo(55)
        }
        
        loginBtn.snp.makeConstraints { (make) in
            make.top.equalTo(passwordTf.snp.bottom).offset(35)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.height.equalTo(50)
        }
        
    }
    
    
    
    //MARK: lazy property
    
    private lazy var accountTf: UITextField = {
        
        let tf = UIKitTool.createTextField(frame: CGRect.zero,
                                           text: SaveTool.getCurrentAccount()["account"],
                                           placeHolder: "account",
                                           font: UIFont.systemFont(ofSize: 16),
                                           textColor: UIColor(0x333333))
        return tf
        
    }()
    
   private lazy var passwordTf: UITextField = {
        let tf = UIKitTool.createTextField(frame: CGRect.zero,
                                           text: SaveTool.getCurrentAccount()["password"],
                                           placeHolder: "password",
                                           font: UIFont.systemFont(ofSize: 16),
                                           textColor: UIColor(0x333333))
        return tf
    }()
    
    
   private lazy var loginBtn: UIButton = { [weak self] in
        let btn = UIButton(type: .custom)
        btn.setTitle("Log in", for: .normal)
        btn.backgroundColor = UIColor(0xff4912)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.layer.cornerRadius = 5
        btn.layer.masksToBounds = true
        btn.addTarget(self, action: #selector(doLogin(sender:)), for: .touchUpInside)
        return btn
    }()
    
    
    //login
    @objc
    private func doLogin (sender: UIButton) {
        
        guard !(accountTf.text!.isEmpty) else {
            print("please enter account!")
            return
        }
        
        LoginViewModel.login(account: accountTf.text!, password: passwordTf.text!, loginBlock: {
            
        })
    }
    
    
    
    
    
    
}
