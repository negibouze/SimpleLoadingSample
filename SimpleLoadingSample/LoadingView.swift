//
//  LoadingView.swift
//  SimpleLoadingSample
//
//  Created by Yoshiaki Itakura on 2015/12/22.
//  Copyright © 2015年 personal. All rights reserved.
//

import UIKit

class LoadingView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    private static let sharedInstance = LoadingView()
    private var isShow = false
    
    private override init(frame: CGRect) {
        super.init(frame: (UIApplication.sharedApplication().delegate?.window??.bounds)!)
        self.setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    class func show(duration: Double = 0.5) {
        if sharedInstance.isShow {
            return
        }
        guard let win = UIApplication.sharedApplication().delegate?.window, let window = win else {
            return
        }
        sharedInstance.isShow = true
        sharedInstance.indicator.startAnimating()
        window.addSubview(sharedInstance)
        UIView.animateWithDuration(duration,
            animations: {
                sharedInstance.alpha = 1.0
            },
            completion: nil
        )
    }
    
    class func hide(duration: Double = 0.5) {
        if !sharedInstance.isShow {
            return
        }
        UIView.animateWithDuration(duration,
            animations: {
                sharedInstance.alpha = 0
            },
            completion: { b in
                sharedInstance.removeFromSuperview()
                sharedInstance.indicator.stopAnimating()
                sharedInstance.isShow = false
            }
        )
    }
    
    // MARK: - Private Methods
    
    /**
    準備
    */
    private func setup() {
        self.backgroundColor = UIColor.clearColor()
        self.alpha = 0
        let className = String.className(self.dynamicType)
        contentView = NSBundle.mainBundle().loadNibNamed(className, owner: self, options: nil).first as! UIView
        contentView.frame = self.bounds
        self.addSubview(contentView)
    }
}
