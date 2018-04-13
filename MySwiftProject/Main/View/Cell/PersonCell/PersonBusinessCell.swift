//
//  PersonBusinessCell.swift
//  MySwiftProject
//
//  Created by 谭谭诚 on 2018/3/23.
//  Copyright © 2018年 tancheng. All rights reserved.
//

import Foundation
import UIKit

class PersonBusinessCell: UITableViewCell {
    
    private lazy var coverImg: UIImageView = {
        
        let img = UIImageView()
        return img
    }()
    
    private lazy var productNameLab: UILabel = {
       
        //let lab = UIKitTool.createLable(frame: CGRect.zero, text: "", font: UIFont.systemFont(ofSize: 16), numberOfLines: 0, textColor: UIColor(0x333333), textAlignment: .left)
        let lab = UILabel()
        return lab
    }()
    
    private lazy var priceLab: UILabel = {
        
        //let lab = UIKitTool.createLable(frame: CGRect.zero, text: "", font: UIFont.systemFont(ofSize: 16), numberOfLines: 0, textColor: UIColor(0xff4912), textAlignment: .left)
        let lab = UILabel()
        return lab
    }()
    
    
    var dataDic: [String:Any]? {
        
        willSet {
            
        }
        
    }
    
    
    
    //
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: setupUI

    private func setupUI() {
        
        contentView.addSubview(coverImg)
        coverImg.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(15)
            make.left.equalToSuperview().offset(12)
            make.width.height.equalTo(50)
        }
        
        contentView.addSubview(productNameLab)
        productNameLab.snp.makeConstraints { (make) in
            make.top.equalTo(coverImg.snp.top)
            make.left.equalTo(coverImg.snp.right).offset(12)
            make.right.equalToSuperview().offset(-12)
            
        }
        
        contentView.addSubview(priceLab)
        priceLab.snp.makeConstraints { (make) in
            make.top.equalTo(productNameLab.snp.bottom).offset(15)
            make.left.equalTo(coverImg.snp.right).offset(12)
        
        }
        
    }
    
    
     //MARK: configureData
    func configureData(_ dic: [String : Any]?) {
        coverImg.backgroundColor = UIColor.red
        productNameLab.backgroundColor = UIColor.blue
        priceLab.backgroundColor = UIColor.yellow
        productNameLab.text = "productNameLab"
        priceLab.text = "priceLab"
    }
    
}
