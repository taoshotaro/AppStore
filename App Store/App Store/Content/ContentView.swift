//
//  ContentView.swift
//  App Store
//
//  Created by 垰尚太朗 on 2018/06/09.
//  Copyright © 2018 ShotaroTao. All rights reserved.
//

import UIKit

class ContentView: UIView {
    
    var imageView: UIImageView!
    
    var subTitleLabel: UILabel!
    
    var titleLabel: UILabel!
    
    var appInfoView: UIView!
    
    var appImageView: UIImageView!
    
    var appTitleLabel: UILabel!
    
    var appInfoLabel: UILabel!
    
    var appBuyButton: UIButton!
    
    var textView: UIView!
    
    var infoText: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        
        addConsts()
        
    }
    
    func addViews() {
        
        self.backgroundColor = .white
        
        self.layer.cornerRadius = 14
        
        self.clipsToBounds = true
        
        imageView = UIImageView()
        
        imageView.image = #imageLiteral(resourceName: "Bear")
        
        subTitleLabel = UILabel()
        
        subTitleLabel.text = "舞台裏"
        
        subTitleLabel.font = UIFont.boldSystemFont(ofSize: 14)
        
        subTitleLabel.textColor = UIColor.hex(hexStr: "A8A6A6", alpha: 1.0)
        
        titleLabel = UILabel()
        
        titleLabel.text = "ある傑作ゲームが\niPadで作られた理由"
        
        titleLabel.numberOfLines = 0
        
        titleLabel.font = UIFont.boldSystemFont(ofSize: 26)
        
        titleLabel.textColor = UIColor.hex(hexStr: "FEFFFE", alpha: 1.0)
        
        appInfoView = UIView()
        
        appInfoView.backgroundColor = UIColor.hex(hexStr: "C42519", alpha: 1.0)
        
        appImageView = UIImageView()
        
        appImageView.image = #imageLiteral(resourceName: "BearLogo")
        
        appImageView.contentMode = .scaleAspectFill
        
        appImageView.layer.cornerRadius = appImageView.frame.width * 0.2237
        
        appTitleLabel = UILabel()
        
        appTitleLabel.text = "Bear - 美麗なノート作成・テキストエディタアプリ"
        
        appTitleLabel.font = UIFont.boldSystemFont(ofSize: 14)
        
        appTitleLabel.textColor = UIColor.hex(hexStr: "FEFFFE", alpha: 1.0)
        
        appInfoLabel = UILabel()
        
        appInfoLabel.text = "仕事効率化"
        
        appInfoLabel.font = UIFont.systemFont(ofSize: 13)
        
        appInfoLabel.textColor = UIColor.hex(hexStr: "FEFFFE", alpha: 1.0)
        
        appBuyButton = UIButton()
        
        appBuyButton.backgroundColor = UIColor.hex(hexStr: "F0F0F6", alpha: 1.0)
        
        textView = UIView()
        
        textView.backgroundColor = UIColor.hex(hexStr: "F0F0F6", alpha: 1.0)
        
        infoText = UILabel()
        
        infoText.font = UIFont.systemFont(ofSize: 17)
        
        infoText.textColor = UIColor.hex(hexStr: "#838387", alpha: 1.0)
        
        infoText.numberOfLines = 0
        
        let text = "毎日使うものには、使いやすいものである必要がありますよね。それが、クリエイティブワークに関係するツールだとすると、使いやすいものであることに加えて、見た目の良さにもこだわりたいものです。"
        
        let lineHeight:CGFloat = 30.0
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.minimumLineHeight = lineHeight
        paragraphStyle.maximumLineHeight = lineHeight
        let attributedText = NSMutableAttributedString(string: text)
        attributedText.addAttribute(kCTParagraphStyleAttributeName as NSAttributedString.Key, value: paragraphStyle, range: NSMakeRange(0, attributedText.length))
        infoText.attributedText = attributedText
        
    }
    
    func addConsts() {
        
        self.addSubview(imageView)
        
        imageView.snp.makeConstraints { (make) in
            make.top.equalTo(self.snp.top)
            make.height.equalTo(492)
            make.right.equalTo(self.snp.right)
            make.left.equalTo(self.snp.left)
        }
        
        self.addSubview(subTitleLabel)
        
        subTitleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeArea.top).offset(18)
            make.left.equalTo(self.snp.left).offset(20)
        }
        
        self.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(subTitleLabel.snp.bottom).offset(12)
            make.left.equalTo(self.snp.left).offset(20)
        }
        
        self.addSubview(appInfoView)
        
        appInfoView.snp.makeConstraints { (make) in
            make.height.equalTo(79)
            make.bottom.equalTo(imageView.snp.bottom)
            make.right.equalTo(self.snp.right)
            make.left.equalTo(self.snp.left)
        }
        
        appInfoView.addSubview(appImageView)
        
        let appIconLength = 48
        
        appImageView.snp.makeConstraints { (make) in
            make.left.equalTo(appInfoView.snp.left).offset(20)
            make.centerY.equalTo(appInfoView.snp.centerY)
            make.width.height.equalTo(appIconLength)
        }
        
        appImageView.layer.cornerRadius = CGFloat(appIconLength) * CGFloat(0.2237)
        
        appImageView.clipsToBounds = true
        
        appInfoView.addSubview(appBuyButton)
        
        appBuyButton.snp.makeConstraints { (make) in
            make.width.equalTo(74)
            make.height.equalTo(30)
            make.right.equalTo(appInfoView.snp.right).offset(-20)
            make.centerY.equalTo(appInfoView.snp.centerY)
        }
        
        appBuyButton.layer.cornerRadius = 15
        
        appInfoView.addSubview(appTitleLabel)
        
        appTitleLabel.snp.makeConstraints { (make) in
            make.left.equalTo(appImageView.snp.right).offset(15)
            make.bottom.equalTo(appInfoView.snp.centerY).offset(-3)
            make.right.equalTo(appBuyButton.snp.left).offset(-12)
        }
        
        appInfoView.addSubview(appInfoLabel)
        
        appInfoLabel.snp.makeConstraints { (make) in
            make.left.equalTo(appImageView.snp.right).offset(15)
            make.top.equalTo(appInfoView.snp.centerY).offset(3)
            make.right.equalTo(appBuyButton.snp.left).offset(-12)
        }
        
        self.addSubview(textView)
        
        textView.snp.makeConstraints { (make) in
            make.top.equalTo(appInfoView.snp.bottom)
            make.right.equalTo(self.snp.right)
            make.left.equalTo(self.snp.left)
            make.bottom.equalTo(self.snp.bottom)
        }
        
        textView.addSubview(infoText)
        
        infoText.snp.makeConstraints { (make) in
            make.top.equalTo(textView.snp.top).offset(36)
            make.width.equalTo(335)
            make.centerX.equalTo(textView.snp.centerX)
            //            make.bottom.equalTo(textView.snp.bottom)
        }
        
        infoText.sizeToFit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
