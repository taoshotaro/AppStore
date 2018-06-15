//
//  CustomAnimator.swift
//  App Store
//
//  Created by 垰尚太朗 on 2018/06/11.
//  Copyright © 2018 ShotaroTao. All rights reserved.
//

import Foundation
import UIKit

class CustomAnimator : NSObject, UIViewControllerAnimatedTransitioning {
    var duration : TimeInterval
    var isPresenting : Bool
    var originFrame : CGRect
    
    public let CustomAnimatorTag = 99
    
    init(duration : TimeInterval, isPresenting : Bool) {
        self.duration = duration
        self.isPresenting = isPresenting
        self.originFrame = CGRect(x: 20, y: 110, width: 335, height: 412)
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        let containerView = transitionContext.containerView
        
        if isPresenting {
            
            let fromView = transitionContext.viewController(forKey: .from) as! MainViewController
            let toView = transitionContext.viewController(forKey: .to) as! ContentViewController
            
            let cell = fromView.mainView.collectionView?.cellForItem(at: (fromView.mainView.collectionView?.indexPathsForSelectedItems?.first)!) as! MainCollectionViewCell
            
            let animationView = ContentView()
            animationView.frame = containerView.convert(cell.frame, from: cell.superview)
            
            cell.isHidden = true
            
            toView.view.frame = transitionContext.finalFrame(for: toView)
            toView.view.alpha = 0
            
            toView.contentView.isHidden = true
            
            containerView.addSubview(toView.view)
            containerView.addSubview(animationView)
            
            animationView.layoutIfNeeded()
            containerView.layoutIfNeeded()
            
            UIView.animate(withDuration: 0.2, delay: 0, options: [.curveEaseIn, .curveEaseOut], animations: {
                
                toView.view.alpha = 1.0
                
                animationView.frame = containerView.convert(toView.contentView.frame, from: toView.view)
                
                animationView.layoutIfNeeded()
                containerView.layoutIfNeeded()
                
            }, completion: {
                finished in
                
                toView.contentView.isHidden = false
                
                cell.isHidden = false
                
                animationView.removeFromSuperview()
                transitionContext.completeTransition(true)
            })
            
        } else {
            
            let toView = transitionContext.viewController(forKey: .from) as! ContentViewController
            let fromView = transitionContext.viewController(forKey: .to) as! MainViewController
            
            // 遷移元のイメージビューからアニメーション用のビューを作成
            let animationView = ContentView()
            animationView.frame = containerView.convert(toView.contentView.frame, from: toView.contentView.superview)
            // 遷移元のイメージを非表示にする
            toView.contentView.isHidden = true
            
            // 遷移先のセルを取得
            let cell = fromView.mainView.collectionView?.cellForItem(at: toView.indexPath) as! MainCollectionViewCell
            
            // 遷移先のセルのイメージを非表示
            cell.isHidden = true
            
            //遷移後のビューコントローラを、予め最後の位置まで移動完了させ非表示にする
            fromView.view.frame = transitionContext.finalFrame(for: fromView)
            
            // 遷移コンテナに、遷移後のビューと、アニメーション用のビューを追加する
            containerView.insertSubview(fromView.view, belowSubview: toView.view)
            containerView.addSubview(animationView)
            
            animationView.layoutIfNeeded()
            containerView.layoutIfNeeded()
            
            // 遷移元のビューを徐々に非表示にする
//            toView.view.alpha = 0
            // アニメーションビューは、遷移後のイメージの位置まで、アニメーションする
            
            
            UIView.animate(withDuration: 0.2, delay: 0, options: [.curveEaseIn, .curveEaseOut], animations: {
                
                animationView.frame = containerView.convert(cell.frame, from: cell.superview)
                
                animationView.layoutIfNeeded()
                containerView.layoutIfNeeded()
                
            }, completion: {
                finished in
                // アニメーション用のビューを削除する
                animationView.removeFromSuperview()
                // 遷移元のイメージの非表示を元に戻す
                toView.contentView.isHidden = false
                // セルのイメージの非表示を元に戻す
                cell.isHidden = false
                transitionContext.completeTransition(true)
            })
            
        }
        
        
        
        
        
        
        

        
        UIView.animate(withDuration: 1.0, delay: 0, options: [.curveEaseIn, .curveEaseOut], animations: {
            
            
            
        }) { _ in
            
            
            
        }

    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
}
