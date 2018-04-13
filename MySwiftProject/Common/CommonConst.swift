//
//  CommonConst.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/1/19.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import Foundation
import UIKit

//MARK: CGFloat

 //nav

let kScreenWidth = UIScreen.main.bounds.size.width

let kScreenHeight = UIScreen.main.bounds.size.height

let navItemHeight: CGFloat = 35

let navItemMargin: CGFloat = 12

let navHeight: CGFloat = (is_iPhoneX ? 44 + 44 : 44 + 20)

let tabBarHeight: CGFloat = (is_iPhoneX ? 49 + 34 : 49 + 0)


//MARK: Color

 //nav
let navBgColor = UIColor(0xf6f6f6)

let navItemDisableColor = UIColor(0xb2b2b2)

let navItemHighlightColor = UIColor(0xff4912)

let navItemNormalColor = UIColor(0x666666)

let navTitleColor = UIColor(0x333333)

//theme
let pageColor = UIColor(0xf6f6f6)

let tableColor = UIColor(0xf6f6f6)

let partingLineColor = UIColor(0xe5e5e5)



//MARK: font

 //nav
let navItemFont = UIFont.systemFont(ofSize: 16)

let navTitleFont = UIFont.boldSystemFont(ofSize: 17)

//MARK: page

let pageSize = 20


//MARK: Key

let kAccountInfoKey: String = "kAccountInfoKey"

let kLogin_currentAccount = "kLogin_currentAccount"

let kIsLogin = "kIsLogin"


//MARK: NotificationName

let kRefreshNotificationName: String = "kRefreshNotificationName"


//MARK: system
let kWindow = UIApplication.shared.delegate?.window!

let is_iPhoneX = UIDevice.current.modelName == "iPhone X" ? true : false

//应用程序信息
let infoDictionary = Bundle.main.infoDictionary!
let appDisplayName = infoDictionary["CFBundleDisplayName"] //程序名称
let majorVersion = infoDictionary["CFBundleShortVersionString"]//主程序版本号
let minorVersion = infoDictionary["CFBundleVersion"]//版本号（内部标示）
let appVersion = majorVersion as! String




