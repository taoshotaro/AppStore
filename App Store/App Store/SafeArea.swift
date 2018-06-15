//
//  SafeArea.swift
//  albumer
//
//  Created by 垰尚太朗 on 2018/05/30.
//  Copyright © 2018年 ShotaroTao. All rights reserved.
//

import UIKit
import SnapKit

extension UIView {
    var safeArea: ConstraintBasicAttributesDSL {
        #if swift(>=3.2)
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.snp
        }
        return self.snp
        #else
        return self.snp
        #endif
    }
}

extension UIView {
    
    func parentViewController() -> UIViewController? {
        
        var parentResponder: UIResponder? = self
        
        while true {
            
            guard let nextResponder = parentResponder?.next else { return nil }
            
            if let viewController = nextResponder as? UIViewController {
                
                return viewController
                
            }
            
            parentResponder = nextResponder
            
        }
        
    }
    
    func animate(_ complete: @escaping () -> Void) {
        
        UIView.animate(withDuration: 0.1, animations: {
            
            self.transform = CGAffineTransform(scaleX: 0.75, y: 0.75)
            
        }, completion: { (_) in
            
            UIView.animate(withDuration: 0.1, animations: {
                
                self.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
            }, completion: { (_) in
                
                complete()
                
            })
            
        })
        
    }
    
}
