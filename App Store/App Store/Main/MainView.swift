//
//  MainView.swift
//  App Store
//
//  Created by 垰尚太朗 on 2018/06/08.
//  Copyright © 2018 ShotaroTao. All rights reserved.
//

import UIKit
import Then

class MainView: UIView {
    
    var collectionView: UICollectionView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        addViews()
        
    }
    
    func addViews() {
        
        let collectionLayoutFlow = UICollectionViewFlowLayout().then { layout in
            
            layout.itemSize = CGSize(width: 335, height: 412)
            
            layout.minimumInteritemSpacing = 0
            
            layout.minimumLineSpacing = 30
            
            layout.sectionInset = UIEdgeInsets(top: 30, left: 0, bottom: 30, right: 0)
            
            layout.scrollDirection = .vertical
            
        }
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionLayoutFlow)
        
        collectionView.showsHorizontalScrollIndicator = false
        
        collectionView.showsVerticalScrollIndicator = false
        
        collectionView.backgroundColor = .gray
        
        collectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: String(describing: MainCollectionViewCell.self))
        
        self.addSubview(collectionView)
        
        collectionView.snp.makeConstraints { (make) in
            make.left.equalTo(self.snp.left)
            make.right.equalTo(self.snp.right)
            make.top.equalTo(self.snp.top)
            make.bottom.equalTo(self.snp.bottom)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
