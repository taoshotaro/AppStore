//
//  MainModel.swift
//  App Store
//
//  Created by 垰尚太朗 on 2018/06/09.
//  Copyright © 2018 ShotaroTao. All rights reserved.
//

import Foundation
import UIKit

class MainViewModel: NSObject {
    
    var originalCellSize: CGRect!
    
}

extension MainViewModel: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: MainCollectionViewCell.self), for: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
//        let theAttributes:UICollectionViewLayoutAttributes! = collectionView.layoutAttributesForItem(at: indexPath)
//        let selectedFrame = collectionView.convert(theAttributes.frame, to: collectionView.superview)
        
        let content = ContentViewController()
        content.indexPath = indexPath
        
        collectionView.parentViewController()?.present(content, animated: true, completion: nil)
        
//        collectionView.parentViewController()?.navigationController?.pushViewController(ContentViewController(), animated: true)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) else { return }
        
        originalCellSize = cell.frame
        
        UIView.animate(withDuration: 0.4, animations: {
            
            cell.frame = CGRect(x: cell.frame.origin.x + 7, y: cell.frame.origin.y + 8, width: cell.frame.size.width - 14, height: cell.frame.size.height - 16)
            
        }, completion: nil)
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        
        guard let cell = collectionView.cellForItem(at: indexPath) else { return }
        
        UIView.animate(withDuration: 0.4, animations: {
            cell.frame = self.originalCellSize
        }, completion: nil)
        
    }
    
}
