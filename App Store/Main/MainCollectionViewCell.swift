//
//  MainCollectionViewCell.swift
//  App Store
//
//  Created by 垰尚太朗 on 2018/06/08.
//  Copyright © 2018 ShotaroTao. All rights reserved.
//

import UIKit
import SnapKit

class MainCollectionViewCell: UICollectionViewCell {
    
    let contentCellView = ContentView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(contentCellView)
        
        contentCellView.snp.makeConstraints { (make) in
            
            make.left.equalTo(self.snp.left)
            
            make.right.equalTo(self.snp.right)
            
            make.top.equalTo(self.snp.top)
            
            make.bottom.equalTo(self.snp.bottom)
            
        }
        
    }
    
//    func addViews() {
//
//        self.contentView.tag = 99
//
//        self.layer.cornerRadius = 14
//
//        self.clipsToBounds = true
//
//        imageView = UIImageView()
//
//        imageView.image = #imageLiteral(resourceName: "Bear")
//
//        subTitleLabel = UILabel()
//
//        subTitleLabel.text = "舞台裏"
//
//        subTitleLabel.font = UIFont.boldSystemFont(ofSize: 14)
//
//        subTitleLabel.textColor = UIColor.hex(hexStr: "A8A6A6", alpha: 1.0)
//
//        titleLabel = UILabel()
//
//        titleLabel.text = "ある傑作ゲームが\niPadで作られた理由"
//
//        titleLabel.numberOfLines = 0
//
//        titleLabel.font = UIFont.boldSystemFont(ofSize: 26)
//
//        titleLabel.textColor = UIColor.hex(hexStr: "FEFFFE", alpha: 1.0)
//
//        appInfoView = UIView()
//
//        appInfoView.backgroundColor = UIColor.hex(hexStr: "C42519", alpha: 1.0)
//
//        appImageView = UIImageView()
//
//        appImageView.image = #imageLiteral(resourceName: "BearLogo")
//
//        appImageView.contentMode = .scaleAspectFill
//
//        appImageView.layer.cornerRadius = appImageView.frame.width * 0.2237
//
//        appTitleLabel = UILabel()
//
//        appTitleLabel.text = "Bear - 美麗なノート作成・テキストエディタアプリ"
//
//        appTitleLabel.font = UIFont.boldSystemFont(ofSize: 14)
//
//        appTitleLabel.textColor = UIColor.hex(hexStr: "FEFFFE", alpha: 1.0)
//
//        appInfoLabel = UILabel()
//
//        appInfoLabel.text = "仕事効率化"
//
//        appInfoLabel.font = UIFont.systemFont(ofSize: 13)
//
//        appInfoLabel.textColor = UIColor.hex(hexStr: "FEFFFE", alpha: 1.0)
//
//        appBuyButton = UIButton()
//
//        appBuyButton.backgroundColor = UIColor.hex(hexStr: "F0F0F6", alpha: 1.0)
//
//    }
//
//    func addConsts() {
//
//        self.addSubview(imageView)
//
//        imageView.snp.makeConstraints { (make) in
//            make.top.equalTo(self.snp.top)
//            make.bottom.equalTo(self.snp.bottom)
//            make.right.equalTo(self.snp.right)
//            make.left.equalTo(self.snp.left)
//        }
//
//        self.addSubview(subTitleLabel)
//
//        subTitleLabel.snp.makeConstraints { (make) in
//            make.top.equalTo(self.snp.top).offset(18)
//            make.left.equalTo(self.snp.left).offset(20)
//        }
//
//        self.addSubview(titleLabel)
//
//        titleLabel.snp.makeConstraints { (make) in
//            make.top.equalTo(subTitleLabel.snp.bottom).offset(12)
//            make.left.equalTo(self.snp.left).offset(20)
//        }
//
//        self.addSubview(appInfoView)
//
//        appInfoView.snp.makeConstraints { (make) in
//            make.height.equalTo(79)
//            make.bottom.equalTo(self.snp.bottom)
//            make.right.equalTo(self.snp.right)
//            make.left.equalTo(self.snp.left)
//        }
//
//        appInfoView.addSubview(appImageView)
//
//        let appIconLength = 48
//
//        appImageView.snp.makeConstraints { (make) in
//            make.left.equalTo(appInfoView.snp.left).offset(20)
//            make.centerY.equalTo(appInfoView.snp.centerY)
//            make.width.height.equalTo(appIconLength)
//        }
//
//        appImageView.layer.cornerRadius = CGFloat(appIconLength) * CGFloat(0.2237)
//
//        appImageView.clipsToBounds = true
//
//        appInfoView.addSubview(appBuyButton)
//
//        appBuyButton.snp.makeConstraints { (make) in
//            make.width.equalTo(74)
//            make.height.equalTo(30)
//            make.right.equalTo(appInfoView.snp.right).offset(-20)
//            make.centerY.equalTo(appInfoView.snp.centerY)
//        }
//
//        appBuyButton.layer.cornerRadius = 15
//
//        appInfoView.addSubview(appTitleLabel)
//
//        appTitleLabel.snp.makeConstraints { (make) in
//            make.left.equalTo(appImageView.snp.right).offset(15)
//            make.bottom.equalTo(appInfoView.snp.centerY).offset(-3)
//            make.right.equalTo(appBuyButton.snp.left).offset(-12)
//        }
//
//        appInfoView.addSubview(appInfoLabel)
//
//        appInfoLabel.snp.makeConstraints { (make) in
//            make.left.equalTo(appImageView.snp.right).offset(15)
//            make.top.equalTo(appInfoView.snp.centerY).offset(3)
//            make.right.equalTo(appBuyButton.snp.left).offset(-12)
//        }
//
//    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
