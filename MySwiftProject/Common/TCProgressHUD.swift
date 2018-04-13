//
//  AppProgressHUD.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/1/23.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import Foundation
import MBProgressHUD

class TCProgressHUD: NSObject {
    
    enum TCProgressHUDType {
        case loading
        case success
        case error
        case warning
        case text
    }
    
    private static let afterHideTime: TimeInterval = 0.8

    private static func configureBaseSetting(_ hud:MBProgressHUD) {
        hud.bezelView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        hud.contentColor = UIColor.white
        
        //hud.label.font = UIFont.systemFont(ofSize: 16)
        // hud.label.textColor = UIColor.white
    }
    
    //MARK: show
    
    static func showLoading(_ text: String, inView: UIView) -> MBProgressHUD {
        let hud =  MBProgressHUD.showAdded(to: inView, animated: true)
        configureBaseSetting(hud)
        hud.label.text = text
        hud.animationType = .zoom
        hud.mode = .indeterminate
        
        return hud;
    }
    
    static func showGif(_ text: String, inView: UIView) -> MBProgressHUD {
        let hud =  MBProgressHUD.showAdded(to: inView, animated: true)
        configureBaseSetting(hud)
        hud.label.text = text
        hud.animationType = .zoom
        hud.mode = .indeterminate
        
        return hud;
    }
    
    static func showSuccess(_ text: String) {
        
        let hud =  MBProgressHUD.showAdded(to: kWindow!, animated: true)
        configureBaseSetting(hud)
        hud.label.text = text
        hud.animationType = .zoom
        hud.mode = .customView
        hud.customView = UIImageView(image: UIImage(named: "success"))
        hud.hide(animated: true, afterDelay: afterHideTime)
    }
    
    static func showError(_ text: String) {
        
        let hud =  MBProgressHUD.showAdded(to: kWindow!, animated: true)
        configureBaseSetting(hud)
        hud.label.text = text
        hud.animationType = .zoom
        hud.mode = .customView
        hud.customView = UIImageView(image: UIImage(named: "error"))
        hud.hide(animated: true, afterDelay: afterHideTime)
    }
    
    static func showWarning(_ text: String) {
        let hud =  MBProgressHUD.showAdded(to: kWindow!, animated: true)
        configureBaseSetting(hud)
        hud.label.text = text
        hud.animationType = .zoom
        hud.mode = .customView
        hud.customView = UIImageView(image: UIImage(named: "warning"))
        hud.hide(animated: true, afterDelay: afterHideTime)
    }
    
    static func showText(_ text: String, detailText: String) {
        
        let hud =  MBProgressHUD.showAdded(to: kWindow!, animated: true)
        configureBaseSetting(hud)
        hud.label.text = text
        hud.detailsLabel.text = detailText
        hud.animationType = .zoom
        hud.mode = .text
        hud.hide(animated: true, afterDelay: afterHideTime)
    }
    
}
