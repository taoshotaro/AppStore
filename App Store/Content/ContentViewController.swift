//
//  ContentViewController.swift
//  App Store
//
//  Created by 垰尚太朗 on 2018/06/09.
//  Copyright © 2018 ShotaroTao. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    let contentView = ContentView()
    
    var indexPath: IndexPath!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.transitioningDelegate = self
        
        self.view.addSubview(contentView)
        
        contentView.snp.makeConstraints { (make) in
            
            make.left.equalTo(self.view.snp.left)
            
            make.right.equalTo(self.view.snp.right)
            
            make.top.equalTo(self.view.snp.top)
            
            make.bottom.equalTo(self.view.snp.bottom)
            
        }
        
        contentView.appBuyButton.addTarget(self, action: #selector(fuuuuunnc), for: .touchUpInside)

        // Do any additional setup after loading the view.
    }
    
    @objc func fuuuuunnc() {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return CustomAnimator(duration: 2.0, isPresenting: false)
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return CustomAnimator(duration: 2.0, isPresenting: true)
    }

}
